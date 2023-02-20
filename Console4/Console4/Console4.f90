!  Console4.f90 
!
!  FUNCTIONS:
!  Console4 - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: Console4
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

    program Console4

    implicit none

    ! Variables
    real :: a = 3., b = 1./3., c = 0.0, erro_abs = 0.0
    INTEGER :: D = 10
    integer :: x1 = 28, x2 = 3, x3 = 4

    ! Body of Console4
    print *, 'Olá Mundo! Eu sou o Fortran.'
    print *, 'a = ', a
    print *, 'b = ', b
    c = (a) * (b)
    print *, 'c = ', c
    erro_abs = 1.0 - c
    print *, 'erro_abs = ', erro_abs
    print *, 'INT(b) = ', INT(b)
    print *, 'NINT(b) = ', NINT(b)
    print *, 'CEILING(b) = ', CEILING(b)
    print *, 'FLOOR(b) = ', FLOOR(b)
    print *, 'REAL(b) = ', REAL(b)
    
    print *, '28/3/4 is igual to ', 28/3/4
    print *, '(28/3)/4 is igual to ', (28/3)/4
    print *, '3.**(-4./2.) is igual to ', 3**(-4./2.)
    print *, '4.**-3 is igual to ', 4.**-3
    print *, '(-3.).**(-5./2.) is igual to ', (-3.)**(-5./2.)

    end program Console4

