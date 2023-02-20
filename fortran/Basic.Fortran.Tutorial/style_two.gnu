set terminal pngcairo transparent enhanced font "arial,10" fontscale 1.0 size 500, 300
set term eps
set output 'exemplo.eps'
set title 'sin(x)/(x + 1)'
set xlabel 'Time'
set ylabel 'Energy'
set grid
set key off
plot 'data.txt' with linespoints ls 6 lc 7
