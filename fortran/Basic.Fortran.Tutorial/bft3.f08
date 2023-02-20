program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 17 de setembro de 2020
	
	! Descrição do programa:
	! Este program especifica o nuhmero de bytes usados por um
	! especificador. 
		
	  implicit none
	
	! Declaração de variáveis.
	  integer(kind =  2)	::	shortval		! Variahvel de dois bytes
	  integer(kind =  4)	::	longval			! Variahvel de quatro bytes
	  integer(kind =  8)	::	verylongval		! Variahvel de oito bytes
	  integer(kind = 16)	::	veryverylongval		! Variahvel de dezesseis bytes
	  integer		::	defval			! Variahvel padrao
	
	! Declaração de Executáveis
	  print *
	  print *,'O maior valor contido em uma variahvel inteira &
		usual de dois bytes eh',huge(shortval),'.'
	  print *
	  print *,'O maior valor contido em uma variahvel inteira &
		usual de quatro bytes eh',huge(longval),'.'
	  print *
	  print *,'O maior valor contido em uma variahvel inteira &
		usual de oito bytes eh',huge(verylongval),'.'
	  print *
	  print *,'O maior valor contido em uma variahvel inteira &
		usual de dezesseis bytes eh',huge(veryverylongval),'.'
	  print *
	  print *,'O maior valor contido em uma variahvel inteira &
		usual padrão eh',huge(defval),'.'
	  print *
	 
end program main
