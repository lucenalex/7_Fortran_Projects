#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
cd "$TMP"
FC=(gfortran -std=f2018 -Wall -Wextra -fcheck=all -fbacktrace)
"${FC[@]}" "$ROOT/fortran/Basic.Fortran.Course/prog2.f03" -o raizes
printf '1 -3 2\n' | timeout 5s ./raizes > raizes-reais.log
grep -q 'The real roots are:' raizes-reais.log
printf '1 0 1\n' | timeout 5s ./raizes > raizes-complexas.log
grep -q 'There are no real roots.' raizes-complexas.log
printf '0 2 -4\n' | timeout 5s ./raizes > raizes-lineares.log
grep -q 'Equacao linear:' raizes-lineares.log
if printf '0 0 1\n' | timeout 5s ./raizes > raizes-invalidas.log 2>&1; then
  echo 'FAIL: degenerate equation should exit nonzero' >&2
  exit 1
fi

printf '3\n0 1\n1 3\n2 5\n' > pts.dat
cp pts.dat regression.dat
"${FC[@]}" "$ROOT/fortran/Basic.Fortran.Course/prog8.f08" -o ajuste8
timeout 5s ./ajuste8 > ajuste8.log
grep -q 'Inclinação' ajuste8.log
"${FC[@]}" "$ROOT/fortran/Basic.Fortran.Course/prog9.f08" -o ajuste9
timeout 5s ./ajuste9 > ajuste9.log
grep -q 'Inclinação' ajuste9.log

"${FC[@]}" "$ROOT/Console4/Console4/Console4.f90" -o console4
timeout 5s ./console4 > console4.log
grep -q 'em complexos' console4.log
echo 'PASS: quadratic, regression and complex arithmetic Fortran smoke tests'
