program nested
     implicit none
     
     integer i, j                    ! Loop counters
   
     do i = 10, 100, 10              ! Start of outer loop
         do j = 1, 3                 ! Start of outer loop
             print *, 'i, j = ',i,j  !      
         end do                      ! End of inner loop
         print *                     ! Blank line
     end do                          ! End of outer loop
     
end program nested
