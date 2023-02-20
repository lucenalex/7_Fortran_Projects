program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 26 de setembro de 2020
	
	! Defini��o: 
		! A estrutura do-while loop repete uma instru��o (ou um grupo de
		! instru��es) enquanto uma determinada condi��o for verdadeira. 
		! Ele testa a condi��o antes de executar o corpo do loop.
	
	! Descri��o do programa:
		! Este programa testa o uso da estrutura do-while loop cuja 
		! sitaxe eh:
		    
		    ! do while (express�o l�gica)
				! statement(s)
				! ...
			! end do
		    
		    ! express�o l�gica -> uma condi��o booleana
		    
	! Neste exemplo, o programa c�lcula os fatoriais dos n�meros e 1 a 10.
		
	implicit none
	
	! Declara��o de vari�veis.
	integer :: nfact = 1
	integer :: n = 1
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		
		! Opera��es
		
	! Declara��o de comandos execut�veis
	
	print *, "Abaixo ser� impresso os os fatoriais de 1 at� 10:"
	print *
	
	do while (n <= 10)
		nfact = nfact * n
		print *, n,"! =",nfact
		n = n + 1
		print *
    end do

end program main
