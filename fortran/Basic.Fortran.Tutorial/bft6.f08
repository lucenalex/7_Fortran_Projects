program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 18 de setembro de 2020
	
	! Descri��o do programa:
		! Este programa calcula o deslocamento devido ao movimento vertical
		! sob a influ�ncia da gravidade. 
		
	  implicit none
	
	! Declara��o de vari�veis.
	  real, parameter :: g = 9.81			! acerela��o da gravidade
	  real            :: s					! deslocamento
	  real            :: t					! tempo
	  real            :: v0					! velocidade inicial
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		t	= 5.0
		v0	= 50
		
		! Formulas
		s = v0*t - g*(t**2)/2
		
	! Sa�da de dados na tela
	 
	  print *
	  print *,"O tempo total gasto no deslocamento foi t =", t,'.'
	  print *
	  print *,"A dist�ncia percorrida durante o deslocamento foi s =", s,'.'	  
	  print *
	  	 
end program main
