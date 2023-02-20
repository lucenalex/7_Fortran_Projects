PROGRAM temp_conversion
    !	Purpose:
    !		To convert an input temperature from degrees Fahrenheit
    !		an outpu temperature in Kelvins.

    !	Record of revisions:
    !		Date 		Programmer 	    Description
    !		========	=============   =============
    !		11/03/15 	s. J. Chapman	Original Code

    IMPLICIT NONE	! Force explicit declaration of variables

    ! 	Data Dictionary:  declare variables types, types, definitions, and
    !	 units
    REAL :: temp_f			! Temperature in degrees Fahrenheit
    REAL :: temp_k		! Temperature in Kelvins.

    !	Prompt the user for the input temperature.
    WRITE (*,*) 'Enter the temperature in degrees Fahrenheit.'
    READ   (*,*) temp_f

    !	Convert to Kelvins.
    temp_k = (5./9.)*(temp_f -32.) + 273.15

    !	Write out the result
    WRITE (*,*) temp_f, 'degres Fahrenheit = ', temp_k, 'Kelvins'

    !	Finish up
END PROGRAM temp_conversion
