program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 26 de setembro de 2020
	
	! Defini��o: 
		! A constru��o do loop permite que  uma instru��o (ou uma serie 
		! de intru��es) seja executada iterativamente enquanto uma de-
		! terminada condi��o for verdadeira.
	
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
		    
	! Neste exemplo, o programa c�lcula os fatoriais dos n�meros e 1 a 10.
		
	implicit none
	
	! Declara��o de vari�veis.
	integer :: nfact = 1
	integer :: n
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		
		! Opera��es
		
	! Declara��o de comandos execut�veis
	
	print *, "Abaixo ser� impresso os os fatoriais de 1 at� 10:"
	print *
	
	do n = 1, 10
		nfact = nfact * n
		! Imprima os valores
		print *, n,"! =",nfact
		print *
    end do

end program main
