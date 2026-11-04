PROGRAM training
    IMPLICIT NONE

    ! Variables for the equivalent resistance
    REAL :: R1, R2, R3, R4, REQ_SERIES, REQ_PARALLEL
    
    ! Variales and parameter for the simple pendulum
    REAL, PARAMETER :: PI = 3.14159265358979323846
    REAL , PARAMETER :: g = 9.81
    REAL :: length_wire, pendulum_period

    ! Determining the Equivalente Resistance of a circuit

    WRITE(*,*) 'Enter the value of R1: '
    READ (*,*) R1
    WRITE(*,*) 'Enter the value of R2: '
    READ (*,*) R2
    WRITE(*,*) 'Enter the value of R3: '
    READ (*,*) R3
    WRITE(*,*) 'Enter the value of R4: '
    READ (*,*) R4

    REQ_SERIES = R1 + R2 + R3 + R4
    REQ_PARALLEL = 1/(1/R1 + 1/R2 + 1/R3 + 1/R4)

    WRITE(*,*) 'The equivalent resistance in series is: ', REQ_SERIES
    WRITE(*,*) 'The equivalent resistance in parallel is: ', REQ_PARALLEL

    ! Determining the period of a simple pendulum

    WRITE(*,*) 'Enter the length of the wire: '
    READ(*,*) length_wire

    pendulum_period = 2 * PI * SQRT(length_wire/g)

    WRITE(*,*) 'The period of the pendulum is: ', pendulum_period

END PROGRAM training