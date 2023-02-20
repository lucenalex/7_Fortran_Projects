program keypress
     
     implicit none
     
     character letter
     
     print *,'Press a key'
     read *, letter
     
     select case (letter)
     
         case ('A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u')
             print *, 'Vogais'
             
         case ('B':'D', 'F':'H', 'J':'N', 'P':'T', 'V':'Z',&
               'b':'d', 'f':'h', 'j':'n', 'p':'t', 'v':'z' )
             print *, 'Consoantes' 
         
         case ('0':'9')
             print *, 'Números'
         
         case default
             print *, 'Qualquer outra coisa que não letras e números.'
         
     end select
     
end program keypress
