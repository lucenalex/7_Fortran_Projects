program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 19 de setembro de 2020
	
	! Descrição do programa:
		! Este programa testa o uso da estrutura de tomada de decisão if (...)
		! then ... end if quando esta é rotulada por um nome. 
		
	  implicit none
	
	! Declaração de variáveis.
	  real :: marks
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		marks = 90.4
		
		! Operações
		
	! Declaração de comandos executáveis
	  ! Use a estrutura if para cagegorizar (grade)
	  gr: if (marks>90.0) then
	      print *, "Nota A"
      end if gr
      	  
	! Saída de dados na tela.
	   	 
end program main
