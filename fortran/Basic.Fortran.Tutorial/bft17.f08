program main
	
	! Autor : Alexsandro Lucena Mota
	! Data: 25 de setembro de 2020
	
	! Descri��o do programa:
		! Este programa testa o uso da estrutura select case dentro
		! de outra estrutura select case. 
		
	  implicit none
	
	! Declara��o de vari�veis.
	  integer :: a = 100
	  integer :: b = 200
	  
	! Declara��o de Execut�veis
		! Atribuicao de valores
		
		! Opera��es
		
	! Declara��o de comandos execut�veis
	  ! Checando a condi��o logica usando a seguinte estrutura:
	  select case (a)
		case (100)
			print *, "Isso faz parte de um interruptor externo",a
			select case (b)
				case(200)
					print *, "Isso faz parte de um interruptor interno",a
            end select
	  end select
      	  
	! Sa�da de dados na tela.
	 
	  print *
	  print *, "O valor exato de 'a' eh ",a,"."
	  print *
	  print *, "O valor exato de 'b' eh ",b,"."
	  print *
	   	 
end program main
