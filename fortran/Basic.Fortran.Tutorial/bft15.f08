program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 24 de setembro de 2020
	
	! Descrição do programa:
		! Este programa testa o uso da estrutura select case. 
		
	  implicit none
	
	! Declaração de variáveis.
	  character :: conceito = 'B'
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		
		! Operações
		
	! Declaração de comandos executáveis
	  ! Checando a condição logica usando a seguinte estrutura:
	  select case (conceito)
	  case ('A')
		print *, "Execelente!"
	  case ('B')
		print *, "Parabens!"
	  case ('C')
		print *, "Muito bom!"
	  case ('D')
		print *, "Voce passou!"
	  case ('E')
		print *, "Voce precisa melhorar! Tente novamente!"
	  case default
		print *, "Este conceito nao eh valido."
      end select
      	  
	! Saída de dados na tela.
	 
	  print *
	  print *, "Seu conceito eh ",conceito,"."
	  print *
	   	 
end program main
