program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 17 de setembro de 2020
	
	! Descrição do programa:
	! Este program como usar uma variahvel do tipo real. 
		
	  implicit none
	
	! Declaração de variáveis.
	  real		::	p, q, realres	                                ! variahvel do tipo real
	  integer	::	i, j, intres								  ! variahvel do tipo integer
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		p = 2.0
		q = 3.0
		i = 2
		j = 3
		
		! Divisao de ponto flutuante
		realres = p/q
		intres	= i/j
		
	! Saída de dados na tela
	 
	  print *
	  print *,'o resultado da divisao entre os numeros reais 2.0 e 3.0 eh', realres,'.'
	  print *
	  print *,'O resultado da divisao entre os numeros inteiros 2 e 3 eh', intres,'.'	  
	  print *
	 
end program main
