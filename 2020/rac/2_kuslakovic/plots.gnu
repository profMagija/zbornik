reset
set palette gray

set terminal pdf monochrome

set xlabel 'Broj agenata'
set ylabel 'Relativno odstupanje [%]'
set xr [-1:8]
set boxwidth 0.5

set logscale y
set grid ytics mytics

set output "plot_2.pdf"
plot 'plots.dat' index 0 using 0:($5*100):xtic(1) notitle w boxes

unset logscale

set xlabel "Broj agenata [× 1000]"
set ylabel "Vreme [s]"
set key left top

set xr [0:400]

set yr [0:42]
set output "plot_3.pdf"
plot 'plots.dat' index 1 using ($1/1000):($2/1000) title 'CPU' w linespoints pt 7, \
     ''          index 1 using ($1/1000):($3/1000) title 'GPU' w linespoints pt 6


set yr [0:300]
set output "plot_4.pdf"
plot 'plots.dat' index 2 using ($1/1000):($2/1000) title 'CPU' w linespoints pt 7, \
     ''          index 2 using ($1/1000):($3/1000) title 'GPU' w linespoints pt 6

set logscale y

set xr [0:110]
set output "plot_5.pdf"
plot 'plots.dat' index 3 using ($1/1000):($2/1000) title 'CPU' w linespoints pt 7, \
     ''          index 3 using ($1/1000):($3/1000) title 'GPU' w linespoints pt 6

