PROGRAM main
        IMPLICIT NONE
        INTEGER :: N, b = 2, q, r, w
        READ *, N, q, r
        q = N/2
        w = b*q
        r = N - w
        PRINT *, q, w ,r
END PROGRAM main
