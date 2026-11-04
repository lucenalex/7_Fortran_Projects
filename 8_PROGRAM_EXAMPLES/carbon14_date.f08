PROGRAM c14_date
    !
    ! Pupose:
    !   To calculate the age of an organic sample from the percentage
    !   of the original carbon-14 remaining in the sample.
    !
    !   Record of revisions:
    !       Date       Programmer    Description of change
    !       ====       ==========    =====================
    !     2011/03/15  S. J. Chapman  Original code
    !     2025/01/08  A. L. Mota     Revised code for study
    !
    IMPLICIT NONE

    ! Data dictionary: declare constants
    REAL, PARAMETER :: LAMBDA = 0.000120968 ! The radioactive decay
                                            ! constant for carbon-14,
                                            ! in units of 1 per years.

    ! Data dictionary: declare variables types, definitions, & units
    REAL :: age_years             ! The age of the sample, in years.
    REAL :: percent_c14_remaining ! The percentage of carbon-14 remaining at the time
                                  ! of the measurement (14%).
    REAL :: ratio                 ! The ratio of the carbon-14 remaining  at the time
                                  ! of the measurement to the original amount of 
                                  ! carbon-14 (no units).
    CHARACTER(LEN=1) :: dummy     ! Dummy variable to pause the program.

    ! Prompt the user for the percentage of carbon-14 remaining.
    WRITE (*,*) 'Enter the percentage of carbon-14 remaining: '
    READ (*,*) percent_c14_remaining

    ! Echo the user's input value.
        WRITE (*,100) percent_c14_remaining
    100 FORMAT ('The remaining carbon-14 = ', F5.2, ' %.')

    ! Perform calculations.
    ratio = percent_c14_remaining / 100.0    ! Convert to fractional ratio.
    age_years =  (-1.0/ LAMBDA) * LOG(ratio) ! Get age in years.

    ! Tell the user about the age of the sample.
    WRITE (*,10) age_years
    10 FORMAT ('The age of the sample is', F8.2, ' years.')

    ! Pause the program to allow the user to read the output
    WRITE (*,*) 'Press Enter to exit...'
    READ (*,'(A)') dummy

    ! Finish up.
END PROGRAM c14_date
