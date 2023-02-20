program main
	! Autor : Alexsandro Lucena Mota
	! Data: 25 de setembro de 2020
	
	! Descrição do programa:
		! Este programa cria um número complexo e apresenta 
		! a função cmplx(). 
		
	  implicit none ! Elimina a atribuição de variáveis implicitas
	  
	  ! Declaração de Variáveis
	  integer   ::  i = 10
	  real      ::  x =  5.17
	  
	  ! Comandos Executáveis
	  print *, cmplx( i, x )
	  
end program main

