program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 18 de setembro de 2020
	
	! Descrição do programa:
		! Este programa calcula o deslocamento devido ao movimento vertical
		! sob a influência da gravidade. 
		
	  implicit none
	
	! Declaração de variáveis.
	  real, parameter :: g = 9.81			! acerelação da gravidade
	  real            :: s					! deslocamento
	  real            :: t					! tempo
	  real            :: v0					! velocidade inicial
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		t	= 5.0
		v0	= 50
		
		! Formulas
		s = v0*t - g*(t**2)/2
		
	! Saída de dados na tela
	 
	  print *
	  print *,"O tempo total gasto no deslocamento foi t =", t,'.'
	  print *
	  print *,"A distância percorrida durante o deslocamento foi s =", s,'.'	  
	  print *
	  	 
end program main
