program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 19 de setembro de 2020
	
	! Descri��o do programa:
		! Este programa testa o uso da estrutura de tomada de decis�o if (...)
		! then ... end if quando esta � rotulada por um nome. 
		
	  implicit none
	
	! Declara��o de vari�veis.
	  real :: marks
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		marks = 90.4
		
		! Opera��es
		
	! Declara��o de comandos execut�veis
	  ! Use a estrutura if para cagegorizar (grade)
	  gr: if (marks>90.0) then
	      print *, "Nota A"
      end if gr
      	  
	! Sa�da de dados na tela.
	   	 
end program main
