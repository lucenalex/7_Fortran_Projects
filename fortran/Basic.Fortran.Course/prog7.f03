program xloop
     implicit none
     
     real     x ! Valor de saída
     real    x0 ! Valor inicial de x
     real    dx ! Incremento em x
     integer nx ! Número de valores
     integer  i ! Contador do loop
     
     ! Valores requeridos
     print *, ' Entre com os valores de x0, dx e nx: '
     read *, x0, dx, nx
     
     do i = 1, nx            ! Inicio da seção de repetição
         x = x0 + (i - 1)*dx ! Valor de saída
         print *, x
     end do                  ! Final da seção de repetição
     
end program xloop
