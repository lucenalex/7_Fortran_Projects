program lines
! Illustration of do llops

     ! Declaration of variables
     implicit none
     integer    ::   n   ! a counter
     
     ! start of repeated section
     do n = 1, 100
         print *, 'n =',n,':   I must not talk in class.'
     end do
     ! end of repeated section
     
end program lines
