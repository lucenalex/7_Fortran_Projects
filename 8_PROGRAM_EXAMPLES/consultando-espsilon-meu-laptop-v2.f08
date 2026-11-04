program test_epsilon
    implicit none
    real(8) :: epsilon_val
    epsilon_val = 1.0d0

    do
        if (epsilon_val + 1.0d0 == 1.0d0) exit
        epsilon_val = epsilon_val / 2.0d0       
    end do

    epsilon_val = 2.0d0 * epsilon_val
    print *, "Epsilon de maquina calculado: ", epsilon_val
end program test_epsilon