program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 18 de setembro de 2020
	
	! Descrição do programa:
		! Este programa executa calculos simples levando em conta as operações
		! de prioridade (operator precedence). 
		
	  implicit none
	
	! Declaração de variáveis.
	  integer :: a, b, c, d
	  integer :: en1, en2, en3, en4			! lista de expressões númericas
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		a = 20
		b = 10
		c = 15
		d =  5
		
		! Operações
		en1 = (a + b)*c/d;					! (30*15)/5
		en2 = ((a + b)*c)/d;				! (30*15)/5
		en3 = (a + b)*(c/d);				! (30)/(3)
		en4 = a + (b*c)/d;					! 20+(150)/5
		
		
	! Declaração de comandos executáveis
	  
	! Saída de dados na tela.
	 
	  print *
	  print *, "Dado que a =",a,", b =",b,", c =",c,"e d =",d,", então, as &
	        expressoes numericas abaixo relacionadas resultam em:"
	  print *, "A)   (a + b)*c/d =",en1,";"
	  print *
	  print *, "B) ((a + b)*c)/d =",en2,";"
	  print *
	  print *, "C) (a + b)*(c/d) =",en3,";"
	  print *
	  print *, "D)   a + (b*c)/d =",en4,"."
	  print *
	   	 
end program main
