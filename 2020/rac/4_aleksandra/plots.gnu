reset
set palette gray
set grid ytics mytics

set terminal pdf monochrome fontscale 0.50

set xr [0:50]
set yr [9:112]
set ytics auto
set xlabel 'Broj iteracija'
set ylabel 'Vrednost kriterijumske funkcije'

set output "plot_1.pdf"
plot 'plots.dat' index 0 u 1:2 t '2 faze' w linespoints pt 2, \
     ''          index 0 u 1:3 t '3 faze' w linespoints pt 4, \
     ''          index 0 u 1:4 t '4 faze' w linespoints pt 6, \
     ''          index 0 u 1:5 t '5 faza' w linespoints pt 8, \
     ''          index 0 u 1:6 t '6 faza' w linespoints pt 10



set yr [263:1545]
set output "plot_2.pdf"
plot 'plots.dat' index 1 u 1:2 t '2 faze' w linespoints pt 2, \
     ''          index 1 u 1:3 t '3 faze' w linespoints pt 4, \
     ''          index 1 u 1:4 t '4 faze' w linespoints pt 6, \
     ''          index 1 u 1:5 t '5 faza' w linespoints pt 8, \
     ''          index 1 u 1:6 t '6 faza' w linespoints pt 10



set yr [119:2973]
set output "plot_3.pdf"
plot 'plots.dat' index 2 u 1:2 t '2 faze' w linespoints pt 2, \
     ''          index 2 u 1:3 t '3 faze' w linespoints pt 4, \
     ''          index 2 u 1:4 t '4 faze' w linespoints pt 6, \
     ''          index 2 u 1:5 t '5 faza' w linespoints pt 8, \
     ''          index 2 u 1:6 t '6 faza' w linespoints pt 10



set yr [1104:4811]
set output "plot_4.pdf"
plot 'plots.dat' index 3 u 1:2 t '2 faze' w linespoints pt 2, \
     ''          index 3 u 1:3 t '3 faze' w linespoints pt 4, \
     ''          index 3 u 1:4 t '4 faze' w linespoints pt 6, \
     ''          index 3 u 1:5 t '5 faza' w linespoints pt 8, \
     ''          index 3 u 1:6 t '6 faza' w linespoints pt 10



set yr [9:112]
set output "plot_5.pdf"
plot 'plots.dat' index 4 u 1:2 t '2 faze' w linespoints pt 2, \
     ''          index 4 u 1:3 t '3 faze' w linespoints pt 4, \
     ''          index 4 u 1:4 t '4 faze' w linespoints pt 6, \
     ''          index 4 u 1:5 t '5 faza' w linespoints pt 8, \
     ''          index 4 u 1:6 t '6 faza' w linespoints pt 10



set yr [263:1531]
set output "plot_6.pdf"
plot 'plots.dat' index 5 u 1:2 t '2 faze' w linespoints pt 2, \
     ''          index 5 u 1:3 t '3 faze' w linespoints pt 4, \
     ''          index 5 u 1:4 t '4 faze' w linespoints pt 6, \
     ''          index 5 u 1:5 t '5 faza' w linespoints pt 8, \
     ''          index 5 u 1:6 t '6 faza' w linespoints pt 10



set yr [119:2973]
set output "plot_7.pdf"
plot 'plots.dat' index 6 u 1:2 t '2 faze' w linespoints pt 2, \
     ''          index 6 u 1:3 t '3 faze' w linespoints pt 4, \
     ''          index 6 u 1:4 t '4 faze' w linespoints pt 6, \
     ''          index 6 u 1:5 t '5 faza' w linespoints pt 8, \
     ''          index 6 u 1:6 t '6 faza' w linespoints pt 10



set yr [1103:4811]
set output "plot_8.pdf"
plot 'plots.dat' index 7 u 1:2 t '2 faze' w linespoints pt 2, \
     ''          index 7 u 1:3 t '3 faze' w linespoints pt 4, \
     ''          index 7 u 1:4 t '4 faze' w linespoints pt 6, \
     ''          index 7 u 1:5 t '5 faza' w linespoints pt 8, \
     ''          index 7 u 1:6 t '6 faza' w linespoints pt 10



set yr [182:758]
set output "plot_9.pdf"
plot 'plots.dat' index 8 u 1:2 t 'GSA' w linespoints pt 2, \
     ''          index 8 u 1:3 t 'PSO' w linespoints pt 4
     