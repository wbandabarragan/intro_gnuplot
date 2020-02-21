set term postscript eps enhanced color font "arial,14"
set encoding iso_8859_1


set title "Funci{\364}n y=e^{|x|}" font ",14"
set border linewidth 4

set output "Hola.eps"


set xrange[-4:4]
set yrange[0:50]

set grid linewidth 1

set key at 0,47
set key font ",14"

set tics font ",14" #Modifica el tamaño de letra de los ejes. En este caso de los números.
set xtics -4,2,4
set ytics 0,10,50

set xlabel "Eje X" font ",14" offset -6,+1.5
set ylabel "Eje Y" font ",14" rotate by 0 offset +1.5,0
plot exp(abs(x)) title " y = e^{|x|}" linecolor 4 linewidth 4 dashtype 3, 5*x**2 title " y = x^2" linecolor 3 linewidth 5 dashtype 4
