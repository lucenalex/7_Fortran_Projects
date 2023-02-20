!  Console4.f08
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

PROGRAM Console4
    IMPLICIT NONE
    ! Variables
    INTEGER :: ix
    REAL    :: theta
    LOGICAL :: test
    ! Body of Console4
    ix = 1
    test = .TRUE.
    theta = 3.141593
    WRITE (*,*) 'IX = ', ix
    WRITE (*,*) 'THETA = ', theta
    WRITE (*,*) 'COS(THETA) = ', COS(theta)
    WRITE (*,*) 'REAL(ix) = ', REAL(ix), 'NINT(THETA) = ', NINT(theta)
END PROGRAM Console4
