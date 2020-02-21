set term png font "arial,14"

set output "funcion.png"

set title "Función e^{|x|}" font ",14"

set xrange[-4:4]
set yrange[0:50]

set key left bottom font ",12"

set tics font ",14" #Modifica el tamaño de letra de los ejes. En este caso de los números.
set xtics -4,2,4
set ytics 0,10,50

set xlabel "Eje X" font ",14" offset -6,+1.5
set ylabel "Eje Y" font ",14" rotate by 0 offset +1.5,0

plot exp(abs(x)) title " y = e^{|x|}"
