#!/usr/bin/env python3
"""Audit legacy Intel Fortran .vfproj under Windows.

Verifies XML references, records ifx/ifort availability, and (when available)
attempts an independent GFortran build. GFortran is NOT Intel certification.
Does not execute any compiled binary.
"""
from pathlib import Path
import argparse
import json
import shutil
import subprocess
import tempfile
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]

def inspect_one(path, work):
    entry = {
        "vfproj": str(path.relative_to(ROOT)).replace("\\", "/"),
        "xml_valid": False, "missing": [], "files": [], "fortran_sources": [],
        "intel_fortran_configured": False, "ifx_compiler_reference": False,
        "gfortran_build": "NOT_RUN", "gfortran_diagnostic": "",
        "intel_compilation": "NOT_TESTED"
    }
    try:
        root = ET.parse(path).getroot()
    except ET.ParseError as exc:
        entry["xml_error"] = str(exc)
        return entry
    entry["xml_valid"] = True
    entry["intel_fortran_configured"] = "Intel Fortran" in root.attrib.get("ProjectCreator", "")
    entry["ifx_compiler_reference"] = any(
        "ifxCompiler" in str(value)
        for node in root.iter() for value in node.attrib.values()
    )
    paths = []
    for node in root.iter():
        value = node.attrib.get("RelativePath")
        if value:
            unit = path.parent / value.replace("\\", "/")
            unit = unit.resolve()
            paths.append(unit)
            if not unit.is_file():
                entry["missing"].append(str(unit.relative_to(ROOT)) if unit.is_relative_to(ROOT) else str(unit))
    entry["files"] = [str(x.relative_to(ROOT)).replace("\\", "/")
                      if x.is_relative_to(ROOT) else str(x) for x in paths]
    sources = [p for p in paths if p.is_file() and p.suffix.lower() in
               (".f", ".for", ".f90", ".f95", ".f03", ".f08")]
    entry["fortran_sources"] = [str(p.relative_to(ROOT)).replace("\\", "/") for p in sources]
    if sources and shutil.which("gfortran"):
        executable = work / (path.stem + ".exe")
        cmd = ["gfortran", "-Wall", "-Wextra",
               *(str(p) for p in sources), "-o", str(executable)]
        try:
            result = subprocess.run(cmd, cwd=work, capture_output=True,
                                    text=True, timeout=40)
            entry["gfortran_build"] = "PASS" if result.returncode == 0 else "FAIL"
            entry["gfortran_diagnostic"] = result.stderr[-1800:]
        except subprocess.TimeoutExpired:
            entry["gfortran_build"] = "TIMEOUT"
    elif sources:
        entry["gfortran_build"] = "COMPILER_UNAVAILABLE"
    else:
        entry["gfortran_build"] = "NO_SOURCES"
    return entry

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--report", required=True, type=Path)
    args = parser.parse_args()
    args.report.parent.mkdir(parents=True, exist_ok=True)
    configs = sorted(ROOT.rglob("*.vfproj"))
    with tempfile.TemporaryDirectory(prefix="vfproj-audit-") as directory:
        work = Path(directory)
        rows = [inspect_one(p,work) for p in configs]
    tools = {name: bool(shutil.which(name)) for name in ("ifx", "ifort", "devenv", "gfortran")}
    result = {"toolchain": tools,
              "compiler_certification": "NOT_TESTED: Intel ifx/ifort + Visual Studio project build not run",
              "project_count": len(rows), "projects": rows}
    args.report.write_text(json.dumps(result, ensure_ascii=False, indent=2)+"\n", encoding="utf-8")
    for row in rows:
        print(row["vfproj"], "refs_missing="+str(len(row["missing"])),
              "gfortran="+row["gfortran_build"],
              "ifx_config="+str(row["ifx_compiler_reference"]),flush=True)
        if row["missing"]:
            print("  missing:",row["missing"],flush=True)
    print("Compiler discovery:",tools,flush=True)
    # Nonzero for malformed project declarations; GFortran is diagnostic, not Intel gating.
    if not rows or any(not r["xml_valid"] or r["missing"] for r in rows):
        raise SystemExit(1)

if __name__ == "__main__":
    main()
