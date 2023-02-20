program regression
     
     implicit none
     integer N                     ! Número de pontos
     integer i                     ! Um contador
     real x(100), y(100)           ! Arrays para manter os pontos
     real sumx, sumy, sumxy, sumxx ! Várias somas intermediárias
     real m, c                     ! Inclinação (slope) e interceptação da linha
     real xbar, ybar               ! Médias de x e y.
     
     ! Valor inicial das somas
     sumx  = 0.0
     symy  = 0.0
     sumxy = 0.0
     
     open (10,file = 'pts.dat')    ! Abra o arquivo de dados; anexar à unidade 10.
     read (10,*) n                 ! Leia o número de pontos.
     
     ! Leia o resto das marcas, uma por linha, e some as somas.
     do i = 1,N
         read(10,*) x(i),y(i)
         sumx  = sumx + x(i)
         sumy  = sumy + y(i)
         sumxy = sumxy + x(i)*y(i)
         sumxx = sumxx + x(i)**2
     end do
     close(10)                     ! Terminou com o arquivo de dados
     
     ! Calculo do melhor ajuste para a linha reta
     xbar = sumx/N
     ybar = sumy/N
     m    = (sumxy - xbar*ybar)/(suxx/N - xbar**2)
     c    = ybar - m*xbar
     
     print *, 'Inclinação = ',m
     print *, 'Interceptação = ',c
     print *, '(3(1x, es10.3))', 'x', 'y', 'mx+c'
     do i = 1, N
         print *, '(3(1x,es10.3))',x(i), y(i), m*x(i) + c
     end do
     
end program regression
