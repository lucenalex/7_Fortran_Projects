program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 18 de setembro de 2020
	
	! Descrição do programa:
		! Este programa checa os operadores lógicos. 
		
	  implicit none
	
	! Declaração de variáveis.
	  logical :: av,af,bv,bf						! Valores de entrada.
	  character(len=11) :: ole, olou,olne,olneq,oleq
	  
	! Declaração de Executáveis
		! Atribuicao de valores
		av = .true.
		af = .false.
		bv = .true.
		bf = .false.
				
		! Operações
		
	! Declaração de comandos executáveis
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
	! Saída de dados na tela.
	 
	  print *
	  print *, "Sendo a proposição 'a' verdadeira e a proposição 'b' falsa, &
			então 'a' e 'b' eh uma proporsição ",ole
	  print *
	  print *, "Sendo a proposição 'a' verdadeira e a proposição 'b' falsa, &
			então 'a' ou 'b' eh uma proporsição ",olou
	  print *
	  print *, "Sendo a proposição 'a' falsa e a proposição 'b' verdadeira, &
			então a negação de 'a' e 'b' eh uma proporsição ",olou
	  print *
	  print *, "Sendo a proposição 'a' falsa e a proposição 'b' verdadeira, &
			então a não equivalencia entre 'a' e 'b' eh uma proporsição ",olneq
	  print *
	  print *, "Sendo a proposição 'a' falsa e a proposição 'b' verdadeira, &
			então a equivalencia entre 'a' e 'b' eh uma proporsição ",oleq
	  print *
	   	 
end program main
