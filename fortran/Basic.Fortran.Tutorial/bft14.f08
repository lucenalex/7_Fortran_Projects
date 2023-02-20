program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 24 de setembro de 2020
	
	! Descrição do programa:
		! Este programa testa o uso da estrutura de tomada de decisão if
		! quando esta eh colocando uma dentro da outra (nested). 
		
	  implicit none
	
	! Declaração de variáveis.
	  integer :: a = 100, b = 200
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		
		! Operações
		
	! Declaração de comandos executáveis
	  ! Checando a condição logica usando a seguinte estrutura:
	  if (a==100) then
		! Se a expressão lógica if externo for verdadeira, então excute:
		if (b==200) then
			! Se expressão lógica o if interno for verdadeira, imprima: 
			print *, "O valor de 'a' eh 100 e o valor de 'b' eh 200."
		end if
	  end if
      	  
	! Saída de dados na tela.
	 
	  print *
	  print *, "O valor exato de 'a' eh",a,"."
	  print *
	  print *, "O valor exato de 'b' eh",b,"."
	  print *
	   	 
end program main
