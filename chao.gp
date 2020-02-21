set term png font "arial,14"

set output "Chao.png"

set key rmargin top # Abajo del margen - Éste es un comentario

set parametric

set isosamples 50,50 #Define iso-superficies

set hidden3d # Oculta líneas no visibles

#set grid

set title "Donas entrecruzadas"

set xlabel "{/Symbol a}" offset -1,-0.5
set ylabel "{/Symbol b}" offset -2.0,-0.5
set zlabel "{/Symbol g}" offset +1.0,-0.5

set urange [-pi:pi]
set vrange [-pi:pi]

set view 30,50,1
unset cntrparam
set cntrparam levels incr -1,0.2,+1
set contour
set view map
unset xlabel
unset ylabel
unset zlabel

unset border
unset surface
#Podemos poner títulos a las leyendas con title "título"

splot cos(u)+0.5*cos(u)*cos(v),sin(u)+0.5*sin(u)*cos(v),0.5*sin(v) title "Dona 1",1+cos(u)+0.5*cos(u)*cos(v),0.5*sin(v),sin(u)+0.5*sin(u)*cos(v) title "Dona 2"
unset cntrparam
