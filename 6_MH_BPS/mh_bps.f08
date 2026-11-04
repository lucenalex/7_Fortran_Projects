PROGRAM mh_bps
  USE runge_kutta  ! Inclui a subrotina runge_kutta
  IMPLICIT NONE

  ! Declaração das variáveis
  INTEGER :: n, ntps
  REAL(8) :: rmin, rmax, tol, h

  ! Alocação de memória para os vetores
  REAL(8), DIMENSION(ntps) :: r, g, a, B, E

  ! Leitura dos dados de entrada
  ! ...

  ! Chamada da subrotina Runge-Kutta
  CALL runge_kutta(r, g, a, h, ntps)

  ! Cálculo de B e E
  ! ...

  ! Gravação dos resultados
  ! ...

  ! Visualização dos resultados
  ! ...

  USE runge_kutta  ! Inclui a subrotina runge_kutta

END PROGRAM mh_bps