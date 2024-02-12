reset
set palette gray

set terminal pdf monochrome fontscale 0.75

set xlabel 'Indeks kandidata'
set xr [0.1:25.9]
set xtics 1,2
set yr [0:0.8]
set boxwidth 0.3
set style fill pattern

set output "plot_1.pdf"
plot 'plots.dat' index 0 u ($0-0.15+1):2 t 'Nedelja'   w boxes lt 1, \
     ''          index 0 u ($0+0.15+1):4 t 'Mesec'     w boxes lt 1

set yr [-0.08:0.149]

set output "plot_2.pdf"
plot 'plots.dat' index 0 u ($0-0.15+1):3 t 'Nedelja'   w boxes lt 1, \
     ''          index 0 u ($0+0.15+1):5 t 'Mesec'     w boxes lt 1

set xlabel 'Kandidat'
set yrange [0:1]
set key outside
set xrange [-0.5:1.5]
set boxwidth 0.15
set style fill pattern 0
set xtics rotate by -15

set output "plot_3.pdf"
plot 'plots.dat' index 1 u ($0-0.30):2 t 'Stvarni rezultat' w boxes lt 1, \
     ''          index 1 u ($0-0.15):3 t 'Model 1'          w boxes lt 1, \
     ''          index 1 u ($0     ):4 t 'Model 2'          w boxes lt 1, \
     ''          index 1 u ($0+0.15):5 t 'Model 3'          w boxes lt 1, \
     ''          index 1 u ($0+0.30):6 t 'Model 4'          w boxes lt 1, \
     ''          index 1 u ($0-0.30):(0):xtic(1) not        w boxes lt 1

set output "plot_4.pdf"
plot 'plots.dat' index 2 u ($0-0.30):2 t 'Stvarni rezultat' w boxes lt 1, \
     ''          index 2 u ($0-0.15):3 t 'Model 1'          w boxes lt 1, \
     ''          index 2 u ($0     ):4 t 'Model 2'          w boxes lt 1, \
     ''          index 2 u ($0+0.15):5 t 'Model 3'          w boxes lt 1, \
     ''          index 2 u ($0+0.30):6 t 'Model 4'          w boxes lt 1, \
     ''          index 2 u ($0-0.30):(0):xtic(1) not        w boxes lt 1

set key inside top right
set yrange [0:1]
set xr [-0.5:5.5]
set output "plot_5.pdf"
plot 'plots.dat' index 3 u ($0-0.30):2 t 'Stvarni rezultat' w boxes lt 1, \
     ''          index 3 u ($0-0.15):3 t 'Model 1'          w boxes lt 1, \
     ''          index 3 u ($0     ):4 t 'Model 2'          w boxes lt 1, \
     ''          index 3 u ($0+0.15):5 t 'Model 3'          w boxes lt 1, \
     ''          index 3 u ($0+0.30):6 t 'Model 4'          w boxes lt 1, \
     ''          index 3 u ($0-0.30):(0):xtic(1) not        w boxes lt 1

set xr [-0.5:4.5]
set output "plot_6.pdf"
plot 'plots.dat' index 4 u ($0-0.30):2 t 'Stvarni rezultat' w boxes lt 1, \
     ''          index 4 u ($0-0.15):3 t 'Model 1'          w boxes lt 1, \
     ''          index 4 u ($0     ):4 t 'Model 2'          w boxes lt 1, \
     ''          index 4 u ($0+0.15):5 t 'Model 3'          w boxes lt 1, \
     ''          index 4 u ($0+0.30):6 t 'Model 4'          w boxes lt 1, \
     ''          index 4 u ($0-0.30):(0):xtic(1) not        w boxes lt 1


set xr [-0.5:3.5]
set output "plot_7.pdf"
plot 'plots.dat' index 5 u ($0-0.30):2 t 'Stvarni rezultat' w boxes lt 1, \
     ''          index 5 u ($0-0.15):3 t 'Model 1'          w boxes lt 1, \
     ''          index 5 u ($0     ):4 t 'Model 2'          w boxes lt 1, \
     ''          index 5 u ($0+0.15):5 t 'Model 3'          w boxes lt 1, \
     ''          index 5 u ($0+0.30):6 t 'Model 4'          w boxes lt 1, \
     ''          index 5 u ($0-0.30):(0):xtic(1) not        w boxes lt 1


set xr [-0.5:5.5]
set output "plot_8.pdf"
plot 'plots.dat' index 6 u ($0-0.30):2 t 'Stvarni rezultat' w boxes lt 1, \
     ''          index 6 u ($0-0.15):3 t 'Model 1'          w boxes lt 1, \
     ''          index 6 u ($0     ):4 t 'Model 2'          w boxes lt 1, \
     ''          index 6 u ($0+0.15):5 t 'Model 3'          w boxes lt 1, \
     ''          index 6 u ($0+0.30):6 t 'Model 4'          w boxes lt 1, \
     ''          index 6 u ($0-0.30):(0):xtic(1) not        w boxes lt 1

set xr [-0.5:3.5]
set yr [0.6:1.09]
set ytics 0.1
set grid ytics mytics
set key left top
set boxwidth 0.2
set style fill pattern 1
set xlabel "Izbori"

set output "plot_9.pdf"
plot 'plots.dat' index 7 u ($0-0.3):2 t 'Model 1'   w boxes lt 1, \
     ''          index 7 u ($0-0.1):3 t 'Model 2'   w boxes lt 1, \
     ''          index 7 u ($0+0.1):4 t 'Model 3'   w boxes lt 1, \
     ''          index 7 u ($0+0.3):5 t 'Model 4'   w boxes lt 1, \
     ''          index 7 u ($0-0.3):(0):xtic(1) not w boxes lt 1


set key right top
set xr [-0.5:5.5]
set yr [0:0.18]
set ytics 0.05

set output "plot_10.pdf"
plot 'plots.dat' index 8 u ($0-0.3):2 t 'Model 1'   w boxes lt 1, \
     ''          index 8 u ($0-0.1):3 t 'Model 2'   w boxes lt 1, \
     ''          index 8 u ($0+0.1):4 t 'Model 3'   w boxes lt 1, \
     ''          index 8 u ($0+0.3):5 t 'Model 4'   w boxes lt 1, \
     ''          index 8 u ($0-0.3):(0):xtic(1) not w boxes lt 1