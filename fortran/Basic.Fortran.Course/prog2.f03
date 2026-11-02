program roots
! Program solves the quadratic equation ax**2 + bx +c = 0.

     ! Declare Variables
     implicit none
     real a, b, c
     real discriminant, root1, root2

     ! Request coefficients
     print *, 'Input a, b, c!'
     read (*,*,end=900,err=900) a, b, c
     if (abs(a) <= epsilon(a)) then
        if (abs(b) <= epsilon(b)) then
           print *, 'Nao ha equacao de primeiro ou segundo grau com a=b=0.'
           stop 1
        end if
        print *, 'Equacao linear: raiz = ', -c/b
        stop
     end if

     ! Calculate discriminant
     discriminant = b**2 - 4.0*a*c

     ! Calculate roots
     if (discriminant < 0.0) then
        print *, 'There are no real roots.'
     else
        root1 = (-b + sqrt(discriminant))/(2.0*a)
        root2 = (-b - sqrt(discriminant))/(2.0*a)
     print *, 'The real roots are:',root1,root2
     end if

     stop
900  print *, 'Erro ao ler os coeficientes.'
     stop 1
     
end program roots