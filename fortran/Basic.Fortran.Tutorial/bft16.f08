program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 25 de setembro de 2020
	
	! Descri��o do programa:
		! Este programa testa o uso da estrutura select case quando a
		! este eh especificado um limite inferior e um limite superior. 
		
	  implicit none
	
	! Declara��o de vari�veis.
	  integer :: marks = 78
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		
		! Opera��es
		
	! Declara��o de comandos execut�veis
	  ! Checando a condi��o logica usando a seguinte estrutura:
	  select case (marks)
	  case (91:100)
		print *, "Execelente!"
	  case (81:90)
		print *, "Muito bom!"
	  case (71:80)
		print *, "Bem feito!"
	  case (61:70)
		print *, "Nada mau!"
	  case (41:60)
		print *, "Voce passou!"
	  case (:40)
		print *,"Melhor tentar novamente!"
	  case default
		print *, "Este conceito nao eh valido."
      end select
      	  
	! Sa�da de dados na tela.
	 
	  print *
	  print *, "Seu conceito eh ",marks,"."
	  print *
	   	 
end program main
