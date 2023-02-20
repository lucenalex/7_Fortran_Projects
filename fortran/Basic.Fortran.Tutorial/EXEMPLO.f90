! example.f90
program main
    implicit none
    character(len=*), parameter :: FILE_NAME = 'data.txt'   ! File name.
    integer,          parameter :: N         = 10           ! Number of values.

    real, dimension(N) :: x, y
    integer            :: i, fu!, fu2

    x(1) = 0.0
    y(1) = 0.0

    do i = 2, N
        x(i) = 0.1 * i
        y(i) = x(i) * x(i)
    end do

    open (newunit=fu, action='write', file=FILE_NAME, status='replace')
    !open (newunit=fu2, action='write', file='plot.plt', status='replace')

    do i = 1, N
        write (fu, *) x(i), y(i)
    end do

    close (fu)
    call execute_command_line('gnuplot style_two.gnu')
end program main
