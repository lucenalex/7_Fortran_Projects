PROGRAM plot_example
    USE plplot
    IMPLICIT NONE
    INTEGER :: i
    REAL, DIMENSION(100) :: x, y

    CALL plinit()
    CALL plenv(0.0, 10.0, -1.0, 1.0, 0, 0)
    CALL pllab('x', 'y', 'Sine Wave')

    DO i = 1, 100
        x(i) = i * 0.1
        y(i) = SIN(x(i))
    END DO

    CALL plline(100, x, y)
    CALL plend()
END PROGRAM plot_example
