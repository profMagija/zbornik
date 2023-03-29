reset
set palette gray
set grid ytics mytics

set terminal pdf monochrome fontscale 0.75

set xr [0:13]
set yr [122.5:128.5]
set ytics 1
set xlabel 'Iteracija'
set ylabel 'Prioritet'

set output "plot_1.pdf"
plot 'plots.dat' index 0 u 1:2 t 'O(1)' w linespoints pt 2, \
     ''          index 0 u 1:3 t 'Implementirani' w linespoints pt 4

set output "plot_2.pdf"
plot 'plots.dat' index 1 u 1:2 t 'O(1)' w linespoints pt 2, \
     ''          index 1 u 1:3 t 'Implementirani' w linespoints pt 4

set output "plot_3.pdf"
plot 'plots.dat' index 2 u 1:2 t 'O(1)' w linespoints pt 2, \
     ''          index 2 u 1:3 t 'Implementirani' w linespoints pt 4

set yr [5:30]
set ytics auto
set ylabel 'Vreme izvršavanja procesa [s]'

set output "plot_4.pdf"
plot 'plots.dat' index 3 u 1:2 t 'O(1)' w linespoints pt 2, \
     ''          index 3 u 1:3 t 'CFS' w linespoints pt 6, \
     ''          index 3 u 1:4 t 'Implementirani' w linespoints pt 4

set yr [0:*]
set key left top


set output "plot_5.pdf"
plot 'plots.dat' index 4 u 1:2 t 'O(1)' w linespoints pt 2, \
     ''          index 4 u 1:3 t 'CFS' w linespoints pt 6, \
     ''          index 4 u 1:4 t 'Implementirani' w linespoints pt 4

set yr [0:*]

set output "plot_6.pdf"
plot 'plots.dat' index 5 u 1:2 t 'O(1)' w linespoints pt 2, \
     ''          index 5 u 1:3 t 'CFS' w linespoints pt 6, \
     ''          index 5 u 1:4 t 'Implementirani' w linespoints pt 4


set yr [19.7:20.7]
set key right top

set output "plot_7.pdf"
plot 'plots.dat' index 6 u 1:2 t 'O(1)' w linespoints pt 2, \
     ''          index 6 u 1:3 t 'CFS' w linespoints pt 6, \
     ''          index 6 u 1:4 t 'Implementirani' w linespoints pt 4


set output "plot_8.pdf"

set xr [-1:14]
set yr [118:127]
set boxwidth 1
set style fill pattern
set xlabel 'Program (broj otvorenih fajlova)'
set ylabel 'Prioritet'

plot 'plots.dat' index 7 u ($0*3):2   t 'O(1)'           w boxes lt 1, \
     ''          index 7 u ($0*3+1):3 t 'Implementirani' w boxes lt 1, \
     ''          index 7 u ($0*3+0.5):(0):xtic(1) not    w boxes lt 1

unset xtics