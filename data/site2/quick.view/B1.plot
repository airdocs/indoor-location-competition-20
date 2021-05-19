#!/usr/bin/gnuplot 
#

set size ratio -1 1,1
set xtics border in scale 1,0.5 mirror norotate  autojustify
set xtics  norangelimit 2
set ytics border in scale 1,0.5 mirror norotate  autojustify
set ytics  norangelimit 2
set grid
set term png size 1024, 1024
set xlabel 'X(m)'
set ylabel 'Y(m)'

set out 'B1.png' 
plot 'B1.out' using 1:2 w p
set out

