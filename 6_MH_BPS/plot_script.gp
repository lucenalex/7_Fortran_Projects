set terminal pngcairo size 800,600 enhanced font 'Verdana,10'
set output 'plot.png'

set title "Maxwell-Higgs BPS"
set xlabel "r"
set ylabel "g(r) and a(r)"
set grid

plot 'output.dat' using 1:2 with lines title 'g(r)', \
     'output.dat' using 1:3 with lines title 'a(r)'