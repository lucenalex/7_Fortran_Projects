program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 26 de setembro de 2020
	
	! Definição: 
		! A estrutura do-while loop repete uma instrução (ou um grupo de
		! instruções) enquanto uma determinada condição for verdadeira. 
		! Ele testa a condição antes de executar o corpo do loop.
	
	! Descrição do programa:
		! Este programa testa o uso da estrutura do-while loop cuja 
		! sitaxe eh:
		    
		    ! do while (expressão lógica)
				! statement(s)
				! ...
			! end do
		    
		    ! expressão lógica -> uma condição booleana
		    
	! Neste exemplo, o programa cálcula os fatoriais dos números e 1 a 10.
		
	implicit none
	
	! Declaração de variáveis.
	integer :: nfact = 1
	integer :: n = 1
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		
		! Operações
		
	! Declaração de comandos executáveis
	
	print *, "Abaixo será impresso os os fatoriais de 1 até 10:"
	print *
	
	do while (n <= 10)
		nfact = nfact * n
		print *, n,"! =",nfact
		n = n + 1
		print *
    end do

end program main
