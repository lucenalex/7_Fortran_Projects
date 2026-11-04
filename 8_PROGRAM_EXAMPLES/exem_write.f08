PROGRAM exem_write
    IMPLICIT NONE

    INTEGER :: i = 21
    REAL :: result = 3.14159
    CHARACTER(LEN=1) :: dummy

    WRITE (*,*) ' The result for interation ', i, ' is ', result

    WRITE (*,100) i, result
    100 FORMAT (' The result for interation ', I3, ' is ', F7.3)

    ! Pause the program to allow the user to read the output
    WRITE (*,*) 'Press Enter to exit...'
    READ (*,'(A)') dummy

    ! Finish up.
END PROGRAM exem_write