program roots
! Program solves the quadratic equation ax**2 + bx +c = 0.

     ! Declare Variables
     implicit none
     real a, b, c
     real discriminant, root1, root2

     ! Request coefficients
     print *, 'Input a, b, c!'
     read *, a, b, c

     ! Calculate discriminant
     discriminant = b**2 - 4.0*a*c

     ! Calculate roots
     if (discriminant < 0.0) then
        print *,'There are not real roots.'
     else
        root1 = (-b + sqrt(discriminant))/(2.0*a)
        root2 = (-b - sqrt(discriminant))/(2.0*a)
     end if

     ! Out roots
     print *, 'The real roots of the quadratic equatios are:',root1,root2,'.'
     
end program roots