PROGRAM compute_plot
 
INTEGER :: i,n=10
REAL :: x(10),y(10)
 
x(1)=0.0
y(1)=0.0
 
DO i=2,n
 x(i)=0.1*i
 y(i)=x(i)*x(i)
ENDDO
 
OPEN(UNIT=48,FILE='data')
DO i=1,n
 WRITE(48,*) x(i),y(i)
ENDDO
CLOSE(48)
 
CALL SYSTEM('gnuplot -p data_plot.plt')
 
END PROGRAM compute_plot
