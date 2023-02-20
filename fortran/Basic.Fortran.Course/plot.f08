program plot

implicit none
integer:: i, n
real:: h, x0, xn
real:: a, b, c
real:: x(3100),y(3100)



a  =    1.0; b = 4.0; c = 1.0
n  =   1000
x0 =  -10.0
xn =   10.0

h = (xn-x0)/n

open(unit=10, file='tex\outputplot.dat')

do i = 1, n
   x(i) = x0 + (i-1)*h
   y(i) = a*(x(i))**2 + b*x(i) + c
   write (10,*) x(i), y(i)   
end do

close(10)

end program plot
