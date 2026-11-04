PROGRAM temp_conversion
    ! Purpose:
    !   To convert an input temperature form degrees Fhrenheit to
    !   an out put temperature in kelvins.
    !
    ! Record of revisions:
    !     Date        Programmer      Description of change
    !     ====        ==========      =====================
    !   11/03/2015   S. J. Chapman    Original code
    !   08/01/2025   A. L. Mota       Reproduced code for study
    !
    IMPLICIT NONE        ! Force explicit declaration of variables

    ! Data dictionary: declare variables types, definitions, & units
    REAL :: temp_fahren  ! Temperature in degrees Faherenheit
    REAL :: temp_kelvin  ! Temperature in kelvins

    ! Prompt the user for the input temperature
    WRITE (*,*) 'Enter the temperature in degrees Fahrenheit: '
    READ (*,*) temp_fahren

    ! Convert the temperature to kelvins
    temp_kelvin = (5.0/9.0) * (temp_fahren - 32.0) + 273.15

    ! Write out the converted temperature
    WRITE (*,*) temp_fahren, ' degrees Fahrenheit = ', temp_kelvin, 'kelvins.'

    ! Finish up.
END PROGRAM temp_conversion