

MODULE euler_solver
  IMPLICIT NONE
  CONTAINS
    SUBROUTINE euler_method(x_inicial, y_inicial, x_final, n_steps, x_vals, y_vals, status, mensagem, n_value)
      REAL(8) :: x_inicial, y_inicial, x_final
      INTEGER(8) :: n_steps
      REAL(8), DIMENSION(:), ALLOCATABLE :: x_vals, y_vals
      INTEGER(8) :: status
      CHARACTER(LEN=*) :: mensagem
      REAL(8) :: n_value

      REAL(8) :: x, y, h
      INTEGER(8) :: i

      h = (x_final - x_inicial) / n_steps
      IF (h == 0.0D0) THEN
        WRITE(6, '(A)') "Error: Step size h is zero. Check input parameters."
        STOP
      END IF

      x = x_inicial
      y = y_inicial

      x_vals(1) = x
      y_vals(1) = y

      DO i = 1, n_steps
        x = x + h
        y = y + n_value * y * h
        x_vals(i+1) = x
        y_vals(i+1) = y
      END DO
    END SUBROUTINE euler_method
END MODULE euler_solver

PROGRAM EulerMethodWithPlot
  USE euler_solver

  IMPLICIT NONE

  INTEGER(8) :: i, j, n_steps, status
  REAL(8) :: x_inicial, y_inicial, x_final
  REAL(8), DIMENSION(:), ALLOCATABLE :: x_vals, y_vals
  REAL(8), DIMENSION(:,:), ALLOCATABLE :: y_vals_n
  REAL(8), DIMENSION(:), ALLOCATABLE :: n_values
  CHARACTER(LEN=20) :: n_str  ! String to hold formatted n value
  CHARACTER(LEN=100) :: mensagem
  CHARACTER(LEN=20) :: filename

  ! Parâmetros do problema
  n_steps = 10000
  x_inicial = 0.0D0
  y_inicial = 1.0D0
  x_final = 1.0D0

  ! Valores de n
  n_values = (/ 1.0D0, 2.0D0, 4.0D0, 8.0D0, 16.0D0 /)

  ! Alocar arrays
  ALLOCATE(x_vals(n_steps+1), y_vals(n_steps+1), y_vals_n(n_steps+1, SIZE(n_values)), STAT=status, errmsg=mensagem)
  IF (status /= 0) THEN
    WRITE(6, '(A)') 'Erro ao alocar memória: ', mensagem
    STOP
  END IF

  ! Loop para cada valor de n
  DO i = 1, SIZE(n_values)
    ! Calcular a soluçăo numérica
    CALL euler_method(x_inicial, y_inicial, x_final, n_steps, x_vals, y_vals, status, mensagem, n_values(i))
    IF (status /= 0) THEN
      WRITE(6, '(A)') 'Erro ao resolver a EDO: ', mensagem
      STOP
    END IF

    ! Armazenar os resultados
    y_vals_n(:, i) = y_vals(:)

    ! Format n as a string (e.g., "01", "02", etc.)
    IF (n_values(i) < 10) THEN
        WRITE(n_str, '(I01)') INT(n_values(i))  ! Format as two-digit integer
    ELSE
        WRITE(n_str, '(I02)') INT(n_values(i))  ! Format as two-digit integer
    END IF


    ! Gerar os nomes dos arquivos (using the formatted string)
    WRITE(filename, '(A,A)') 'resultados_', TRIM(n_str)

    ! Abrir arquivos para escrita (BIN, CSV e DAT) - Melhor tratamento de erros
    OPEN(UNIT=10, FILE=TRIM(filename)//'.bin', STATUS='REPLACE', FORM='UNFORMATTED', IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
      WRITE(6, '(A)') 'Erro ao abrir arquivo binário: ', mensagem
      STOP
    END IF

    OPEN(UNIT=11, FILE=TRIM(filename)//'.csv', STATUS='REPLACE', FORM='FORMATTED', IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
      WRITE(6, '(A)') 'Erro ao abrir arquivo CSV: ', mensagem
      STOP
    END IF

    OPEN(UNIT=12, FILE=TRIM(filename)//'.dat', STATUS='REPLACE', FORM='FORMATTED', IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
      WRITE(6, '(A)') 'Erro ao abrir arquivo DAT: ', mensagem
      STOP
    END IF

    ! Escrever dados nos arquivos
    DO j = 1, n_steps + 1

        WRITE(10) x_vals(j), y_vals(j)
        WRITE(11, '(F10.6,",",F10.6)') x_vals(j), y_vals(j)
        WRITE(12, '(F10.6,",",F10.6)') x_vals(j), y_vals(j)

        ! Imprime os valores para depuração
        PRINT *, "j =", j, "x_vals(j) =", x_vals(j), "y_vals(j) =", y_vals(j)
    END DO

    ! Fechar arquivos
    CLOSE(10)
    CLOSE(11)
    CLOSE(12)

  END DO  ! End of n loop

  ! Deallocate memory
  DEALLOCATE(x_vals, y_vals, y_vals_n, STAT=status, errmsg=mensagem)
  IF (status /= 0) THEN
    WRITE(6, '(A)') 'Erro ao liberar memória: ', mensagem
    STOP
  END IF

END PROGRAM EulerMethodWithPlot
