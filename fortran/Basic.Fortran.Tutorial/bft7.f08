program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 18 de setembro de 2020
	
	! Descrição do programa:
		! Este programa executa calculos aritimeticos. 
		
	  implicit none
	
	! Declaração de variáveis.
	  integer :: a, b						! Valores de entrada.
	  integer :: exponenciacao				! Operação de exponenciação
	  integer :: multiplicacao, divisao		! Operações de multiplicação e divisão
	  integer :: adicao, subtracao			! Operações de soma e subtração
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		a = 5
		b = 3
				
		! Operações
		exponenciacao = a**b				! Exponenciação.
		multiplicacao = a*b					! Multiplicação.
		divisao       = a/b					! Divisão.
		adicao        = a + b				! Adição.
		subtracao     = a - b				! Subtração.
		
	! Saída de dados na tela.
	 
	  print *
	  print *,"Dado a = 5 e b = 3, o resultado de  'a' elevado a 'b' será c =&
	        ", exponenciacao,'.'
	  print *
	  print *,"Dado a = 5 e b = 3, o resultado da multiplicação de 'a' com 'b'&
			será c =", multiplicacao,'.'
	  print *
	  print *,"Dado a = 5 e b = 3, o resultado da divisão de 'a' por 'b' será&
	        c =", divisao,'.'
	  print *
	  print *,"Dado a = 5 e b = 3, o resultado da adição de 'a' com 'b' será&
	        c =", adicao,'.'
	  print *
	  print *,"Dado a = 5 e b = 3, o resultado da subtração de 'b' em 'a' será&
	        c =", subtracao,'.'
	  print *
	   	 
end program main
