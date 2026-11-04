PROGRAM least_squares_fit
    !
    ! Propósito:
    !   Para executar um ajuste de mínimos quadrados de um conjunto de 
    !   dados como uma linha reta e imprimir os valores de inclinação e
    !   interceptação resultantes. Os dados de entrada para este ajuste
    !   vêm de um arquivo de dados de entrada pelo usuário.
    !
    ! Registro de revisões:
    !       Data        Programador             Descrição da mudança
    !       ====        ===========             ====================
    !    19-Nov-2015   S. J. Chapman            Código Original
    !    24-Jan-2025   A. L. Mota               Estudo de revisão
    !
    IMPLICIT NONE
    !
    ! Dicionário de dados: declarar constantes
    INTEGER, PARAMETER :: LU = 18   ! Unidade E/S para E/S disco
    !
    ! Dicionário de dados: declare tipos de variáveis, definições e unidades
    ! Observe que as variáveis cumulativas são todas inicializadas como zero.
    CHARACTER(len=24) :: filename   ! Nome do arquivo de entrada (<= 24 caracteres)
    INTEGER :: ierror               ! Sinalizador de status de instruções de E/S
    CHARACTER(len=80) :: msg        ! Mensagem de erro
    INTEGER :: n = 0                ! Número de pares de dados de entrada (x,y)
    REAL :: slope                   ! Inclinação da linha
    REAL :: sum_x = 0               ! Soma de todos os valores x de entrada
    REAL :: sum_x2                  ! Soma de todos os valores x quadrados de entrada
    REAL :: sum_xy                  ! Soma de todos os valores x*y de entrada
    REAL :: sum_y                   ! Soma de todos os valores y de entrada
    REAL :: x                       ! Um valor x de entrada                   
    REAL :: x_bar                   ! Valor da média de x
    REAL :: y                       ! Um valor y de entrada
    REAL :: y_bar                   ! Valor médio de y
    REAL :: y_int                   ! Interceptação da linha no eixo y
    !
    ! Avise o usuário e obtenha o nome do arquivo de entrada
    WRITE (*,1000)
    1000 FORMAT ('Este programa executa um ajuste de mínimos quadrados de um',/, &
                 'conjunto de dados de entrada definitos em a linha reta',/, &
                 'do arquivo que contém os pares de entrada (x,y): ')
    !
    READ (*, '(A)') filename
    !
    ! Abertura do arquivo de entrada
    OPEN (UNIT=LU, FILE=filename, STATUS='OLD', IOSTAT=ierror, IOMSG=msg)
    !
    ! Verifique se o OPEN falhou.
    errorcheck: IF ( ierror >0 ) THEN
        !
        WRITE (*,1010) filename
        1010 FORMAT ('ERROR: arquivo ',A,' não existe!')
        WRITE (*,'(A)') TRIM(msg)
        !
    ELSE
        !
        ! Arquivo aberto com sucesso. Leia os pares (x,y)
        ! O arquivo de entrada.
        DO
            READ (LU,*,IOSTAT=ierror) x, y   ! Obter par
            IF ( ierror /= 0 ) EXIT          !
            n      = n + 1                   !
            sum_x  = sum_x + x               ! Calcular
            sum_y  = sum_y + y               ! estatíticas
            sum_x2 = sum_x2 + x**2           !
            sum_xy = sum_xy + x * y          !
        END DO
        ! 
        ! Agora calcule a inclinação e a interceptação.
        x_bar = sum_x / REAL(n)
        y_bar = sum_y / REAL(n)
        slope = (sum_xy - sum_x * y_bar) / ( sum_x2 - sum_x * x_bar)
        y_int = y_bar - slope * x_bar
        !
        ! Diga ao usuário
        !
        WRITE (*,1020) slope, y_int, N
        1020 FORMAT ('Os coeficiente de Regressão para a reta de mínimos quadrados:',&
                /,' Inclinação (m)    = ', F12.3, &
                /,' Interceptação (b) = ', F12.3, &
                /,' Número de pontos  = ', I12)
        !
        ! Feche o arquivo de entrada e saia.
        CLOSE (UNIT=LU)
        !
    END IF errorcheck
    !
END PROGRAM least_squares_fit