program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 26 de setembro de 2020
	
	! Definição: 
		! Pode-se usar uma ou mais estruturas de loop uma dentro da
		! da outra (Nested Loops); Pode-se, também, colocar rótulos
		! em loops.
	
	! Descrição do programa:
		! Este programa testa o uso da estrutura nested loop cuja 
		! sitaxe eh:
		    
		    ! iloop: do i = 1, 3
		        ! print *, "i =",i
		        ! jloop: do j = 1, 3
					! print *, "j =",j
					! kloop: do k = 1, 3
						! print *, "k =",k
						! ...
					! end do kloop
				!end do jloop
			! end do iloop
		    
		    
	! Neste exemplo, o programa executar três loops internos e imprime os
	! os valores das variáveis de loop.
		
	implicit none
	
	! Declaração de variáveis.
	integer :: i, j, k
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		
		! Operações
		
	! Declaração de comandos executáveis
	
	print *, "Abaixo será impresso o valor das variáveis de loop:"
	print *
	
	iloop: do i = 1, 3
		jloop: do j = 1, 3
			kloop: do k = 1, 3
				print *, "(i, j, k) =", i, j, k
				print *
			end do kloop
		end do jloop
	end do iloop

end program main
