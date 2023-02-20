program main
	! Autor : Alexsandro Lucena Mota
	! Data: 26 de setembro de 2020
	
	! Descri��o do programa:
		! Este programa demostra como fazer a aritm�tica de n�meros
		! complexos. 
		
	  implicit none ! Elimina a atribui��o de vari�veis implicitas
	  
	  ! Declara��o de Vari�veis
	  complex				::	x, y, z
	  complex, parameter   	::  i = (0 , 1) ! sqrt(-1)
	  
	  ! Atribui��o de valores
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

