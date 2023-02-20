program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 26 de setembro de 2020
	
	! Defini��o: 
		! Pode-se usar uma ou mais estruturas de loop uma dentro da
		! da outra (Nested Loops); Pode-se, tamb�m, colocar r�tulos
		! em loops.
	
	! Descri��o do programa:
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
		    
		    
	! Neste exemplo, o programa executar tr�s loops internos e imprime os
	! os valores das vari�veis de loop.
		
	implicit none
	
	! Declara��o de vari�veis.
	integer :: i, j, k
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		
		! Opera��es
		
	! Declara��o de comandos execut�veis
	
	print *, "Abaixo ser� impresso o valor das vari�veis de loop:"
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
