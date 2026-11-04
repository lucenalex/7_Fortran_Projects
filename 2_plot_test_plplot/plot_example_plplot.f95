program plot_example
    use plplot
    implicit none
    integer :: i
    real, dimension(100) :: x, y

    call plinit()
    call plenv(0.0, 10.0, -1.0, 1.0, 0, 0)
    call pllab('x', 'y', 'Sine Wave')

    do i = 1, 100
        x(i) = i * 0.1
        y(i) = sin(x(i))
    end do

    call plline(100, x, y)
    call plend()
end program plot_example