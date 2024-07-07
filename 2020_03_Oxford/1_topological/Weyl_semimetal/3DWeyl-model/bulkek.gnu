set terminal pdf enhanced color font ",30"
set palette defined ( 0  "green", 5 "yellow", 10 "red" )
set output 'bulkek.pdf' 
set style data linespoints
unset key
set pointsize 0.8
#set xtics font ",24"
#set ytics font ",24"
set ylabel font ",24"
set ylabel offset 1.5,0
set xrange [0:    6.28319]
emin=   -3.500000
emax=    3.500000
set ylabel "Energy (eV)"
set yrange [ emin : emax ]
set xtics ("X  "    0.00000,"G  "    3.14159,"Z  "    6.28319)
set arrow from    3.14159, emin to    3.14159, emax nohead
# please comment the following lines to plot the fatband 
plot 'bulkek.dat' u 1:2  w lp lw 2 pt 7  ps 0.2 lc rgb 'black', 0 w l lw 2
 
# uncomment the following lines to plot the fatband 
#plot 'bulkek.dat' u 1:2:3  w lp lw 2 pt 7  ps 0.2 lc palette, 0 w l lw 2
# uncomment the following lines to plot the spin if necessary
#plot 'bulkek.dat' u 1:2 w lp lw 2 pt 7  ps 0.2, \
     'bulkek.dat' u 1:2:($3/6):($4/6) w vec
