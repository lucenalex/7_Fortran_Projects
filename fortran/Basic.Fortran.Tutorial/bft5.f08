program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 17 de setembro de 2020
	
	! Descrição do programa:
		! Este program demonstra a declaracao de variaveis, tarefa e
		! e imprime o resultado na tela (screen). 
		
	  implicit none
	
	! Declaração de variáveis.
	  integer :: total
	  real	:: averange          ! variahvel do tipo real
	  complex :: cx
	  logical :: done
	  character(len=80) :: message ! uma cadeia (string) de 80 caracteres.
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		total    = 20000
		averange =  1666.67
		done     = .true.
		message  = 'Um grande Oi do Tutorials Point.'
		cx       = (3.0,5.0) ! cc = 3.0 + 5.0I
		
		! Divisao de ponto flutuante
		
	! Saída de dados na tela
	 
	  print *
	  print *,"O valor armazenado na variahvel inteira 'total' foi: ", total,'.'
	  print *
	  print *,"O valor armazenado na variahvel real 'averange' foi: ", averange,'.'	  
	  print *
	  print *,"O valor armazenado na variahvel complexa 'cx' fo: i", cx,'.'	  
	  print *
	  print *,"O valor armazenado na variahvel lohgica 'done' foi: ", done,'.'	  
	  print *
	  print *,"O valor armazenado na variahvel character 'message' foi: ", message,'.'	  
	  print *
	 
end program main
