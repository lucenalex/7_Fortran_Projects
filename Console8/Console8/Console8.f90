!  Console8.f90 
!
!  FUNCTIONS:
!  Console8 - Calculate the equivalent resistor.
!
!****************************************************************************
!
!  PROGRAM: Console8
!
!  PURPOSE:  Calculate the equivalente resistor.
!
!****************************************************************************

    PROGRAM resistors

        IMPLICIT NONE

        ! Variables
        REAL :: req = 0., rsr = 0., rpr = 0., r1 = 1., r2 = 2., r3 = 3., r4 = 4.
    
        ! Body of Console8
        WRITE(*,*) 'The program calculate the equivalente resitor.'
        WRITE(*,*) 'The input value of the resistor are: r1 = ', r1,' r2 = ', r2,' r3 = ', r3,' and r4 = ', r4,'.'
        WRITE(*,*) 'The resistor r1 and r2 are series connected.'
        WRITE(*,*) 'The resistor r3 and r4 are parallel connected.'
        rsr = r1 + r2
        WRITE(*,*) 'The equivalente resistor of the r1 and r2 is rsr = ', rsr, '.'
        rpr = 1./(1/r3 +1/r4 )
        WRITE(*,*) 'The equivalente resistor of the r3 and r4 is rpr = ', rpr, '.'
     
    END PROGRAM resistors

