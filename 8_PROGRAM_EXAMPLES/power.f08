PROGRAM power
!   
!   Purpose: 
!     To calculate the current, real, reactive, and power,
!     and the power factor supplied to a load.
!
!   Record of revisions:
!       Date       Programmer           Description of change
!       ====       ==========           =====================
!     11/03/2015  S. J. Chapman         Original code
!     08/01/2025  A. L. Mota            Reproduced for study
!
    IMPLICIT NONE

!   Data dictonary: declare constants
    REAL, PARAMETER :: DEG_2_RAD = 0.01745329252 ! deg to radians factor

!   Data dictonary: declare variables types, definitions, & units
    REAL :: amps         ! Current in the lao (A)
    REAL :: real_power   ! Real power of load (W)
    REAL :: p_factor     ! Power factor of load (no units)
    REAL :: q_power      ! Reactive power of load (VAR)
    REAL :: s_power      ! Apparent power of load (VA)
    REAL :: theta        ! Impedance angle between of the load (deg)
    REAL :: volts        ! Rms voltage of the power source (V)
    REAL :: z            ! Magnitude of the load Impedance (ohms)

!   Prompt the user for the rms voltage.
    WRITE (*,*) 'Enter the rms voltage of the power source (V): '
    READ (*,*) volts

!   Prompt the user for the magnitude and angle fo the impedance.
    WRITE (*,*) 'Enter the magnitude of the load impedance (ohms): '
    READ (*,*) z
    WRITE (*,*) 'Enter the impedance angle of the load (degrees): '
    READ (*,*) theta

!   Perform the calculations
    amps = volts / z                                     ! Rms current
    real_power = volts * amps * COS(theta * DEG_2_RAD)   ! Real power
    q_power = volts * amps * SIN(theta * DEG_2_RAD)      ! Reactive power
    s_power = volts * amps                               ! Apparent power
    p_factor = COS(theta * DEG_2_RAD)                    ! Power factor    
    
!   Write out the results
    WRITE (*,*) 'Voltage        = ', volts, ' volts'
    WRITE (*,*) 'Impedance      = ', z, ' ohms at ', theta, ' degrees'
    WRITE (*,*) 'Current        = ', amps, ' amps'
    WRITE (*,*) 'Real Power     = ', real_power, ' watts'
    WRITE (*,*) 'Reactive Power = ', q_power, ' VAR'
    WRITE (*,*) 'Apparent Power = ', s_power, ' VA'
    WRITE (*,*) 'Power Factor   = ', p_factor

!   Finish up.
END PROGRAM power