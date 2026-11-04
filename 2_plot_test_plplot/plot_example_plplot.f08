PROGRAM plot_example
    USE plplot
    IMPLICIT NONE

    INTEGER :: i, n
    REAL(8) :: x(100), y(100)

    n = 100
    DO i = 1, n
        x(i) = i * 0.1
        y(i) = SIN(x(i))
    END DO

    CALL plinit()
    CALL plenv(0.0, 10.0, -1.0, 1.0, 0, 0)
    CALL pllab('x-axis', 'y-axis', 'Sine Wave')
    CALL plline(n, x, y)
    CALL plend()

END PROGRAM plot_example
