program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 24 de setembro de 2020
	
	! Descri��o do programa:
		! Este programa testa o uso da estrutura de tomada de decis�o if (...)
		! then...else if then...else if then... (...)...else ... end if. 
		
	  implicit none
	
	! Declara��o de vari�veis.
	  integer :: a = 100
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		
		! Opera��es
		
	! Declara��o de comandos execut�veis
	  ! Checando a condi��o logica usando a seguinte estrutura:
	  if (a==10) then
		! Se a express�o l�gica for verdadeira, ent�o imprima:
		print *, "O valor de 'a' eh 10."
	  else if (a==20) then
		! Se a express�o l�gica for verdadeira, ent�o imprima:
		print *,"O valor de 'a' eh 20."
	  else if (a==30) then
		! Se a express�o l�gica for verdadeira, ent�o imprima:
		print *, "O valor de 'a' eh 30."
	  else
		! Se nenhuma express�o l�gica for verdadeira, ent�o imprima:
		print *, "Nenhum dos valores estah coincidindo."
      end if
      	  
	! Sa�da de dados na tela.
	 
	  print *
	  print *, "O valor de 'a' eh",a,"."
	  print *
	   	 
end program main
