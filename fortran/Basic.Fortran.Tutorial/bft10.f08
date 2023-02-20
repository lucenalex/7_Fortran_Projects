program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 19 de setembro de 2020
	
	! Descrição do programa:
		! Este programa testa o uso da estrutura de tomada de decisão if (...)
		! then ... end if. 
		
	  implicit none
	
	! Declaração de variáveis.
	  integer :: a = 10
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		
		! Operações
		
	! Declaração de comandos executáveis
	  ! Checando a condição logica usando a seguinte estrutura:
	  if (a<20) then
		! Se a expressão lógica for verdadeira, então imprima:
		print *, "'a' eh menor do que 20."
      end if
      	  
	! Saída de dados na tela.
	 
	  print *
	  print *, "O valor de 'a' eh",a,"."
	  print *
	   	 
end program main
