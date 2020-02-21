#set terminal postscript eps size 3.2,2.25 enhanced color dashed dashlength 2.8 linewidth 2 "Helvetica" 15
#set terminal postscript eps size 3.2,2.3 enhanced color solid linewidth 2 "Helvetica" 18
set terminal postscript eps size 3.2,2.25 enhanced color dashed dashlength 2.8 linewidth 2 "Helvetica" 18

set style line 3 lt 1 lw 3.0 lc rgb "dark-red"
set style line 4 lt 1 lw 3.0 lc rgb "#E9967A"
set style line 5 lt 1 lw 3.0 lc rgb "#1E90FF"
set style line 6 lt 1 lw 3.0 lc rgb "#EE82EE"
set style line 7 lt 1 lw 3.0 lc rgb "#228B22"
set style line 8 lt 1 lw 3.0 lc rgb "#FF6347"

set output 'Figure2.eps'

set style line 1 lt 1 lw 2.0 lc rgb "blue"

set st d l
#set logscale x 2.71828
#set logscale y 10.0
set label "Density PDFs in model Tur-0-0" at -10,2.46 tc rgb "black"
set xrange [-10:10]
set yrange [-7:2]
set xlabel offset +0.0, +0.65
set xlabel "ln({/Symbol r}/{/Symbol n})"
set ylabel offset +0.5
set ylabel "log_{10}P({/Symbol r}/{/Symbol n})"
set bmargin at screen 0.175
set lmargin at screen 0.145
set xtics 2
set ytics -7,1,0
set bmargin at screen 0.14
set tmargin at screen 0.92
set lmargin at screen 0.13
set rmargin at screen 0.94
#set multiplot 
set key left top
set key samplen 10
plot "pdf_f00.dat" using 1:2 title "t/t_{cc}=0.00" ls 3, "pdf_f15.dat" using 1:2 title "t/t_{cc}=0.25" ls 4, "pdf_f30.dat" using 1:2 title "t/t_{cc}=0.50" ls 5, "pdf_f45.dat" using 1:2 title "t/t_{cc}=0.75" ls 6, "pdf_f60.dat" using 1:2 title "t/t_{cc}=1.00" ls 7, "pdf_f75.dat" using 1:2 title "t/t_{cc}=1.25" ls 8
#set key right top
#set key samplen 10
#plot  "pdf_f45.dat" using 1:2 title "t/t_{cc}=0.75" ls 6, "pdf_f60.dat" using 1:2 title "t/t_{cc}=1.00" ls 7, "pdf_f75.dat" using 1:2 title "t/t_{cc}=1.25" ls 8
