program plot_sine_function
    implicit none
    ! Import some module
    ! Import the module that contains the function
    ! Variables declaration
    integer :: i
    real :: x, y
    ! Open the file
    open(unit=10, file='plot_sine_function.dat')
    ! Write the data to the file
    do i = 0, 100
        x = i * 0.1
        y = sin(x)
        write(10, *) x, y
    end do
    ! Close the file
    close(10)
    ! Print the message
    write(*, *) 'Data has been written to the file plot_sine_function.dat' 
end program plot_sine_function