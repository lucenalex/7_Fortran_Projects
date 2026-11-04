PROGRAM hello
    USE ftlStringModule
    USE ftlHashMapStringIntModule
    IMPLICIT NONE

    TYPE(ftlHashMapStringInt) :: dist
    INTEGER :: d1
    TYPE(ftlString) :: city, dstr

    ! Create map.
    CALL dist%New(10)
    ! Add some values to the map.
    CALL dist%Set('London', 1020)
    CALL dist%Set('New York', 6380)
    CALL dist%Set('Paris', 850)
    CALL dist%Set('Tokyo', 8900)

    ! Find some values in the map.
    d1 = dist%Get('Paris')
    CALL  dstr%New(d1)
    PRINT *, 'Paris is ', dstr, 'km away.'

    city = 'Beijing'
    IF (.NOT. dist%Has(city)) THEN
        PRINT *, "I don't know distance to Beijing."
    ELSE
        PRINT *, 'How can that be?'
    END IF
END PROGRAM
