program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 24 de setembro de 2020
	
	! Descri��o do programa:
		! Este programa testa o uso da estrutura select case. 
		
	  implicit none
	
	! Declara��o de vari�veis.
	  character :: conceito = 'B'
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		
		! Opera��es
		
	! Declara��o de comandos execut�veis
	  ! Checando a condi��o logica usando a seguinte estrutura:
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
      	  
	! Sa�da de dados na tela.
	 
	  print *
	  print *, "Seu conceito eh ",conceito,"."
	  print *
	   	 
end program main
