set terminal png font "Helvetica" 18 size 1024,768

set output "Comparacion.png"

#Definimos los estilos de línea con código RGB
set style line 1 lt 1 lw 3.0 lc rgb "dark-red"
set style line 2 lt 2 lw 3.0 lc rgb "#E9967A"
set style line 3 lt 3 lw 3.0 lc rgb "#228B22"

#definimos el borde
set border linewidth 3

#definimos el estilo
set style data lines

#ubicamos una etiqueta
set label "PDFs" at -10,2.46 tc rgb "black"

#definimos los rangos
set xrange [-10:10]
set yrange [-7:2]

#etiquetamos los sjes
set xlabel offset +0.0, +0.65
set xlabel "Eje X"
set ylabel offset +0.5
set ylabel "Eje Y"

#definimos el espaciamiento para los ejes
set xtics 2
set ytics -7,1,0

#Definimos la posición y largo del "key"
set key left top
set key samplen 20

#Definimos los márgenes
set bmargin at screen 0.14
set tmargin at screen 0.92
set lmargin at screen 0.13
set rmargin at screen 0.94

plot "pdf_f00.dat" using 1:2 title "t/t_{cc}=0.00" linestyle 1, "pdf_f15.dat" using 1:2 title "t/t_{cc}=0.25" linestyle 2, "pdf_f30.dat" using 1:2 title "t/t_{cc}=0.50" linestyle 3

