MODULE euler_solver
  IMPLICIT NONE
  CONTAINS
    SUBROUTINE euler_method(x_inicial, y_inicial, x_final, n, x_vals, y_vals, status, mensagem)
      REAL(8) :: x_inicial, y_inicial, x_final
      INTEGER :: n
      REAL(8), DIMENSION(:), ALLOCATABLE :: x_vals, y_vals
      INTEGER :: status
      CHARACTER(LEN=*) :: mensagem

      REAL(8) :: x, y, h
      INTEGER :: i

      h = (x_final - x_inicial) / n
      x = x_inicial
      y = y_inicial

      x_vals(1) = x
      y_vals(1) = y

      DO i = 1, n
        x = x + h
        y = y - 2.0D0 * y * h
        x_vals(i+1) = x
        y_vals(i+1) = y
      END DO
    END SUBROUTINE euler_method
END MODULE euler_solver
!
PROGRAM EulerMethodWithPlot
    USE plplot
    USE euler_solver

    IMPLICIT NONE
    INTEGER :: i, n, status
    REAL(8) :: x_inicial, y_inicial, x_final
    REAL(8), DIMENSION(:), ALLOCATABLE :: x_vals, y_vals
    CHARACTER(LEN=100) :: mensagem

    ! Parâmetros do problema
    n = 5000
    x_inicial = 0.0D0
    y_inicial = 1.0D0
    x_final = 1.0D0

    ! Alocar arrays para armazenar os valores de x e y
    ALLOCATE(x_vals(n+1), y_vals(n+1), STAT=status, errmsg=mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao alocar memória: ', mensagem
        STOP
    END IF

    ! Abrir o arquivo binário para escrita
    OPEN(UNIT=10, FILE='resultados.bin', STATUS='REPLACE', &
        FORM='UNFORMATTED', IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao abrir o arquivo binário para escrita: ', &
        mensagem
        STOP
    END IF

    ! Método de Euler para resolver a equação diferencial
    ! Calcular a solução numérica
    CALL euler_method(x_inicial, y_inicial, x_final, n, x_vals, y_vals, status, mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao resolver a EDO: ', mensagem
        STOP
    END IF

    ! Escrever os dados calculados no arquivo binário
    DO i = 1, n+1
        WRITE(10, IOSTAT = status, IOMSG = mensagem ) x_vals(i), y_vals(i)
        IF (status /= 0) THEN
            WRITE (6, '(A)') 'Erro ao escrever no arquivo binário: ', mensagem
            CLOSE(UNIT=10)
            STOP
        END IF
    END DO

    ! Fechar o arquivo após a escrita
    CLOSE(UNIT=10, IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao fechar o arquivo binário após a escrita: ', &
        mensagem
        STOP
    END IF

     ! Abre o arquivo binário para leitura
    OPEN(UNIT=11, FILE='resultados.bin', STATUS='OLD', FORM='UNFORMATTED', IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao abrir arquivo binário: ', mensagem
        STOP
    END IF


    ! Lê os dados de x e y do arquivo binário
    DO i = 1, n+1
        READ(11, IOSTAT=status, IOMSG=mensagem)  x_vals(i), y_vals(i)
        IF (status /= 0) THEN
            WRITE(6, '(A)') 'Erro ao ler dados do arquivo binário (second): ', mensagem
            CLOSE(11)
            DEALLOCATE(x_vals, y_vals)
            STOP
        END IF
    END DO

    ! Fecha o arquivo binário
    CLOSE(11, IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao fechar o arquivo binário após a leitura: ', &
        mensagem
        STOP
    END IF

    ! Abre o arquivo CSV para escrita
    OPEN(UNIT=12, FILE='resultados.csv', STATUS='REPLACE',IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao abrir o arquivo csv para escrita: ', &
        mensagem
        STOP
    END IF

    ! Escreve os dados em formato CSV
    DO i = 1, n+1
        WRITE(12, '(F10.6, ",", F10.6)') x_vals(i), y_vals(i)
    END DO

    ! Fecha o arquivo CSV
    CLOSE(12,IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao fechar o arquivo cvs após a escrita: ', &
        mensagem
        STOP
    END IF

    ! Abre o arquivo CSV para leitura
    OPEN(UNIT=13, FILE='resultados.csv', STATUS='OLD', IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao abrir o arquivo CSV para leitura: ', &
        mensagem
        STOP
    END IF

    ! Lê e imprime os dados do arquivo CSV
    DO i = 1, n+1
        READ(13,*) x_vals(i), y_vals(i)
        WRITE(6, '(F10.6, ",", F10.6)') x_vals(i), y_vals(i)
    END DO

    ! Fecha o arquivo CSV
    CLOSE(13, IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao fechar o arquivo CSV após a leitura: ', &
        mensagem
        STOP
    END IF

    ! Abre o arquivo DAT para escrita
    OPEN(UNIT=14, FILE='resultados.dat', STATUS='REPLACE',IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao abrir o arquivo csv para escrita: ', &
        mensagem
        STOP
    END IF

    ! Escreve os dados em formato CSV
    DO i = 1, n+1
        WRITE(14, '(F10.6, ",", F10.6)') x_vals(i), y_vals(i)
    END DO

    ! Fecha o arquivo DAT
    CLOSE(14,IOSTAT=status, IOMSG=mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao fechar o arquivo cvs após a escrita: ', &
        mensagem
        STOP
    END IF


    ! Carregar paletas de cores
    CALL plspal0('cmap0_alternate.pal')
    CALL plspal1('cmap1_blue_red.pal', .true.) ! Paleta de cores "quente" invertida

    ! Inicializar o PLplot com alta resolução
    CALL plsdev('pngcairo')  ! Usar o driver PNG Cairo para alta resolução
    CALL plsfnam('solucao_edo.png')  ! Nome do arquivo de saída
    CALL plsdev('wincairo')
    !CALL plsetopt('geometry', '1920x1080')  ! Definir a resolução do gráfico

    ! Inicializar o PLplot
    CALL plinit
    CALL plcol0(1)
    CALL plenv(0.0D0, x_final, 0.0D0, 1.0D0, 0, 0)
    !CALL plcol0(1)  ! Definir a cor da linha como azul
    CALL pllab('x', 'y', 'Solução da EDO usando o Método de Euler')
    CALL plcol0(2)

    ! Plotar os dados
    CALL plline(x_vals(1:n+1:1), y_vals(1:n+1:1))

    ! Adicionar legenda
    !CALL pllegend(1,1)

    ! Finalizar o PLplot
    CALL plend()

    ! Liberar a memória alocada
    DEALLOCATE(x_vals, y_vals, STAT=status, errmsg=mensagem)
    IF (status /= 0) THEN
        WRITE(6, '(A)') 'Erro ao liberar memória: ', mensagem
        STOP
    END IF

END PROGRAM EulerMethodWithPlot
