program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 18 de setembro de 2020
	
	! Descri��o do programa:
		! Este programa checa os operadores l�gicos. 
		
	  implicit none
	
	! Declara��o de vari�veis.
	  logical :: av,af,bv,bf						! Valores de entrada.
	  character(len=11) :: ole, olou,olne,olneq,oleq
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		av = .true.
		af = .false.
		bv = .true.
		bf = .false.
				
		! Opera��es
		
	! Declara��o de comandos execut�veis
	  if (av.and.bf)then
		ole = "verdadeira."
	  else
		ole = "falsa."
	  end if
	  
	  if (av.or.bf) then
		olou = "verdadeira."
	  else
		olou = "falsa."
      end if
      
      if (.not.(af.and.bv)) then
		olne = "verdadeira."
	  else
		olne = "falsa."
      end if
      
      if (bv.neqv.af) then
		olneq = 'verdadeira.'
	  else
		olneq = 'falsa.'			
      end if
      
      if (bv.eqv.af) then
		oleq = "verdadeira."
	  else
		oleq = "falsa."
      end if
	! Sa�da de dados na tela.
	 
	  print *
	  print *, "Sendo a proposi��o 'a' verdadeira e a proposi��o 'b' falsa, &
			ent�o 'a' e 'b' eh uma proporsi��o ",ole
	  print *
	  print *, "Sendo a proposi��o 'a' verdadeira e a proposi��o 'b' falsa, &
			ent�o 'a' ou 'b' eh uma proporsi��o ",olou
	  print *
	  print *, "Sendo a proposi��o 'a' falsa e a proposi��o 'b' verdadeira, &
			ent�o a nega��o de 'a' e 'b' eh uma proporsi��o ",olou
	  print *
	  print *, "Sendo a proposi��o 'a' falsa e a proposi��o 'b' verdadeira, &
			ent�o a n�o equivalencia entre 'a' e 'b' eh uma proporsi��o ",olneq
	  print *
	  print *, "Sendo a proposi��o 'a' falsa e a proposi��o 'b' verdadeira, &
			ent�o a equivalencia entre 'a' e 'b' eh uma proporsi��o ",oleq
	  print *
	   	 
end program main
