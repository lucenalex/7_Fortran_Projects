program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 24 de setembro de 2020
	
	! Descrição do programa:
		! Este programa testa o uso da estrutura de tomada de decisão if (...)
		! then...else if then...else if then... (...)...else ... end if. 
		
	  implicit none
	
	! Declaração de variáveis.
	  integer :: a = 100
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		
		! Operações
		
	! Declaração de comandos executáveis
	  ! Checando a condição logica usando a seguinte estrutura:
	  if (a==10) then
		! Se a expressão lógica for verdadeira, então imprima:
		print *, "O valor de 'a' eh 10."
	  else if (a==20) then
		! Se a expressão lógica for verdadeira, então imprima:
		print *,"O valor de 'a' eh 20."
	  else if (a==30) then
		! Se a expressão lógica for verdadeira, então imprima:
		print *, "O valor de 'a' eh 30."
	  else
		! Se nenhuma expressão lógica for verdadeira, então imprima:
		print *, "Nenhum dos valores estah coincidindo."
      end if
      	  
	! Saída de dados na tela.
	 
	  print *
	  print *, "O valor de 'a' eh",a,"."
	  print *
	   	 
end program main
