program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 18 de setembro de 2020
	
	! Descri��o do programa:
		! Este programa executa calculos simples levando em conta as opera��es
		! de prioridade (operator precedence). 
		
	  implicit none
	
	! Declara��o de vari�veis.
	  integer :: a, b, c, d
	  integer :: en1, en2, en3, en4			! lista de express�es n�mericas
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		a = 20
		b = 10
		c = 15
		d =  5
		
		! Opera��es
		en1 = (a + b)*c/d;					! (30*15)/5
		en2 = ((a + b)*c)/d;				! (30*15)/5
		en3 = (a + b)*(c/d);				! (30)/(3)
		en4 = a + (b*c)/d;					! 20+(150)/5
		
		
	! Declara��o de comandos execut�veis
	  
	! Sa�da de dados na tela.
	 
	  print *
	  print *, "Dado que a =",a,", b =",b,", c =",c,"e d =",d,", ent�o, as &
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
