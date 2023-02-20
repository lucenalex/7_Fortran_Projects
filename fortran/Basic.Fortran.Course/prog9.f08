program regression

     implicit none
     integer   :: n                        ! Número de pontos
     integer   :: i                        ! Um contador
     real      :: x(100), y(100)           ! Arrays para manter os pontos
     real      :: sumx, sumy, sumxy, sumxx ! Várias somas intermediárias
     real      :: m, c                     ! Inclinação (slope) e interceptação da linha
     real      :: xbar, ybar               ! Médias de x e y.

     ! Valor inicial das somas
     sumx  = 0.0; sumy  = 0.0; sumxy = 0.0; sumxx = 0.0

     open( unit = 10, file = "regression.dat")    ! Abra o arquivo de dados; anexar a unidade 10.
     read(*,*), n                              ! Leia o número de pontos.

     ! Leia o resto das marcas, uma por linha, e some as somas.
     do i = 1, n
          read(*,*), x(i),y(i)
          sumx  = sumx + x(i)
          sumy  = sumy + y(i)
          sumxy = sumxy + x(i)*y(i)
          sumxx = sumxx + x(i)**2
     end do
     close(10)                     ! Terminou com o arquivo de dados

     ! Calculo do melhor ajuste para a linha reta
     xbar = sumx/n
     ybar = sumy/n
     m    = (sumxy/n - xbar*ybar)/(sumxx/n - xbar**2)
     c    = ybar - m*xbar

     print *, 'Inclinação = ',m
     print *, 'Interceptação = ',c
     print *, '(3(1x, a10))', 'x', 'y', 'mx+c'
     do i = 1, n
          print *, '(3(1x,es10.3))',x(i), y(i), m*x(i) + c
     end do

end program regression
