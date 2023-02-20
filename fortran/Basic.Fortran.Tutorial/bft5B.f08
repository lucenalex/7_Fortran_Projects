program main
	! Autor : Alexsandro Lucena Mota
	! Data: 26 de setembro de 2020
	
	! Descrição do programa:
		! Este programa demostra como fazer a aritmética de números
		! complexos. 
		
	  implicit none ! Elimina a atribuição de variáveis implicitas
	  
	  ! Declaração de Variáveis
	  complex				::	x, y, z
	  complex, parameter   	::  i = (0 , 1) ! sqrt(-1)
	  
	  ! Atribuição de valores
	  x = (7, 8);
	  y = (5,-7)
	  print *
	  write(*,*) i*x*y
	  print*
	  
	  z = x + y
	  print *, "z = x + y =",z
	  print*
	  
	  z = x - y
	  print *, "z = x - y =",z
	  print*
	  
	  z = x*y
	  print *, "z = x*y =",z
	  print*
	  
	  z = x/y
	  print *, "z = x/y =",z
	  print*
	  
end program main

