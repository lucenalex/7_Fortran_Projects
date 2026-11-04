
PROGRAM bad_format
    
    IMPLICIT NONE
    
    INTEGER :: i = 10, k = 20, a = 30, m = 1
    INTEGER :: j1 = 1, k1 = 2, l1 = 3, m1 = 4, n1 = 5
    REAL :: voltage = 13800.0
    CHARACTER(len=6) :: j = "ABCDEF"

    WRITE (*,100) i, j
    100 FORMAT (//,/'i = ', I10,1X, ' j = ', L10,//)

    WRITE (*,110) i, j, k, a
    110 FORMAT (//,/'i = ', I3,',',1X, ' j = ', A7,',',1X, & 
                ' k = ', I3,',',1X, ' a = ', I3,'.',//)

    WRITE (*,120) m
    120 FORMAT (//,/'M = ', I3, ', N = ', I4, ', O = ', F7.2,'.',//)
    WRITE (*,'(//)')

    WRITE (*,130) voltage / 1000.0
    130 FORMAT (//,'Voltage = ', F8.1, ' kV.',//)

    WRITE (*,140) j1, k1, l1, m1, n1
    140 FORMAT ('value =', I3,'.')

    WRITE (*,150) j1, k1, l1, m1, n1
    150 FORMAT ('Value =',/, ('New Line',2(3X,I5)))

END PROGRAM bad_format

