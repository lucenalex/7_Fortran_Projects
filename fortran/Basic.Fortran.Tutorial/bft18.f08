program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 26 de setembro de 2020
	
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
		
	implicit none
	
	! Declaração de variáveis.
	integer :: n
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		
		! Operações
		
	! Declaração de comandos executáveis
	
	print *, "Abaixo será impresso os valores da variável de loop:"
	print *
	
	do n = 11, 20
		! Imprima o valor de n
		print *, "n =",n
		print *
    end do
	! Saída de dados na tela.

end program main
