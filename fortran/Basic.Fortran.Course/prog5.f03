program friction

    implicit none
    integer N
    real, parameter  :: ks = 1.0e-4           ! Roughness (m)
    real, parameter  ::  D = 1.65             ! Diameter of the pipe (m)
    real, parameter  ::  Q = 12.0             ! flow (m3/s)
    real, parameter  :: nu = 1.0e-6           ! viscosity (m2/s)
    real, parameter  :: PI = 4.0*atan(1.0)    ! Pi number
    real ksd                                  ! Relative roughness (ks/d)
    real Re                                   ! Reynolds number
    real x,y0,y1,y2,y3                        ! 1/sqrt(lambda)
    real xold                                 ! Previous value of x
    real, parameter :: tolerance = 1.0e-8     ! Convergence tolerance
    
    N    = 0    
    Re   = 4*Q/(PI*D*nu)
    x    = 1.0                                ! Initial guess
    xold = x + 1.0                            ! Anything different from x
    
    print *, 'ksd = ', ksd,' and Re = ',Re,'.'
    print * 
    
    do while (abs(x-xold)>tolerance)
       N = N + 1
       xold = x                               ! Store previous
       y0 = ks/(3.7*D)
       y1 = 2.51*x/Re
       y2 = y0 + y1
       y3 = log10(y2)
       x = -2.0*y3      ! New value
       ! print *, 'y0 = ', y0,';  y1 = ', y1,';  y2 = ', y2,';   y3 = ', y3
       print *, 'N =',N,';   x = ',x,';   xold = ',xold
       print *, 'abs(x-xold) = ',abs(x-xold),' > ',tolerance
       print * 
       print *, 'Friction factor = ', 1.0/(x*x)
       print *
       print *
    end do
    
    print *, 'Friction factor = ', 1.0/(x*x)  ! Output lambda
    
end program friction
