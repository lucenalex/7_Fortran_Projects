program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 18 de setembro de 2020
	
	! Descri��o do programa:
		! Este programa executa calculos aritimeticos. 
		
	  implicit none
	
	! Declara��o de vari�veis.
	  integer :: a, b						! Valores de entrada.
	  integer :: exponenciacao				! Opera��o de exponencia��o
	  integer :: multiplicacao, divisao		! Opera��es de multiplica��o e divis�o
	  integer :: adicao, subtracao			! Opera��es de soma e subtra��o
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		a = 5
		b = 3
				
		! Opera��es
		exponenciacao = a**b				! Exponencia��o.
		multiplicacao = a*b					! Multiplica��o.
		divisao       = a/b					! Divis�o.
		adicao        = a + b				! Adi��o.
		subtracao     = a - b				! Subtra��o.
		
	! Sa�da de dados na tela.
	 
	  print *
	  print *,"Dado a = 5 e b = 3, o resultado de  'a' elevado a 'b' ser� c =&
	        ", exponenciacao,'.'
	  print *
	  print *,"Dado a = 5 e b = 3, o resultado da multiplica��o de 'a' com 'b'&
			ser� c =", multiplicacao,'.'
	  print *
	  print *,"Dado a = 5 e b = 3, o resultado da divis�o de 'a' por 'b' ser�&
	        c =", divisao,'.'
	  print *
	  print *,"Dado a = 5 e b = 3, o resultado da adi��o de 'a' com 'b' ser�&
	        c =", adicao,'.'
	  print *
	  print *,"Dado a = 5 e b = 3, o resultado da subtra��o de 'b' em 'a' ser�&
	        c =", subtracao,'.'
	  print *
	   	 
end program main
