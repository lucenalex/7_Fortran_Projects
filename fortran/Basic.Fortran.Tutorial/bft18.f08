program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 26 de setembro de 2020
	
	! Descri��o do programa:
		! Este programa testa o uso da estrutura do loop cuja sitaxe eh:
		    
		    ! do var = start, stop, step
				! statement(s)
				! ...
			! end do
		    
		    ! var 	-> vari�vel de loop; deve ser inteira;
		    ! start -> valor incial do loop;
		    ! stop	-> valor final (parada) do loop;
		    ! step	-> valor do passo (opcional): se omitido step = 1;
		    ! statement(s)	->	instru��es;
		
	implicit none
	
	! Declara��o de vari�veis.
	integer :: n
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		
		! Opera��es
		
	! Declara��o de comandos execut�veis
	
	print *, "Abaixo ser� impresso os valores da vari�vel de loop:"
	print *
	
	do n = 11, 20
		! Imprima o valor de n
		print *, "n =",n
		print *
    end do
	! Sa�da de dados na tela.

end program main
