program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 26 de setembro de 2020
	
	! Definição: 
		! A construção do loop permite que  uma instrução (ou uma serie 
		! de intruções) seja executada iterativamente enquanto uma de-
		! terminada condição for verdadeira.
	
	! Descrição do programa:
		! Este programa testa o uso da estrutura do loop cuja sitaxe eh:
		    
		    ! do var = start, stop, step
				! statement(s)
				! ...
			! end do
		    
		    ! var 	-> variável de loop; deve ser inteira;
		    ! start -> valor incial do loop;
		    ! stop	-> valor final (parada) do loop;
		    ! step	-> valor do passo (opcional): se omitido step = 1;
		    ! statement(s)	->	instruções;
		    
	! Neste exemplo, o programa cálcula os fatoriais dos números e 1 a 10.
		
	implicit none
	
	! Declaração de variáveis.
	integer :: nfact = 1
	integer :: n
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		
		! Operações
		
	! Declaração de comandos executáveis
	
	print *, "Abaixo será impresso os os fatoriais de 1 até 10:"
	print *
	
	do n = 1, 10
		nfact = nfact * n
		! Imprima os valores
		print *, n,"! =",nfact
		print *
    end do

end program main
