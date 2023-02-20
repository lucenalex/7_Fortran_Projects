program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 25 de setembro de 2020
	
	! Descrição do programa:
		! Este programa testa o uso da estrutura select case quando a
		! este eh especificado um limite inferior e um limite superior. 
		
	  implicit none
	
	! Declaração de variáveis.
	  integer :: marks = 78
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		
		! Operações
		
	! Declaração de comandos executáveis
	  ! Checando a condição logica usando a seguinte estrutura:
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
      	  
	! Saída de dados na tela.
	 
	  print *
	  print *, "Seu conceito eh ",marks,"."
	  print *
	   	 
end program main
