program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 24 de setembro de 2020
	
	! Descri��o do programa:
		! Este programa testa o uso da estrutura de tomada de decis�o if
		! quando esta eh colocando uma dentro da outra (nested). 
		
	  implicit none
	
	! Declara��o de vari�veis.
	  integer :: a = 100, b = 200
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		
		! Opera��es
		
	! Declara��o de comandos execut�veis
	  ! Checando a condi��o logica usando a seguinte estrutura:
	  if (a==100) then
		! Se a express�o l�gica if externo for verdadeira, ent�o excute:
		if (b==200) then
			! Se express�o l�gica o if interno for verdadeira, imprima: 
			print *, "O valor de 'a' eh 100 e o valor de 'b' eh 200."
		end if
	  end if
      	  
	! Sa�da de dados na tela.
	 
	  print *
	  print *, "O valor exato de 'a' eh",a,"."
	  print *
	  print *, "O valor exato de 'b' eh",b,"."
	  print *
	   	 
end program main
