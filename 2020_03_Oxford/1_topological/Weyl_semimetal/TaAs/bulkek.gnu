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
set xrange [0:    4.86562]
emin=   -7.533953
emax=    7.916198
set ylabel "Energy (eV)"
set yrange [ emin : emax ]
set xtics ("G  "    0.00000,"X  "    0.53905,"G  "    1.07810,"Z  "    2.37077,"N  "    3.32373,"P  "    4.02400,"Z  "    4.86562)
set arrow from    0.53905, emin to    0.53905, emax nohead
set arrow from    1.07810, emin to    1.07810, emax nohead
set arrow from    2.37077, emin to    2.37077, emax nohead
set arrow from    3.32373, emin to    3.32373, emax nohead
set arrow from    4.02400, emin to    4.02400, emax nohead
# please comment the following lines to plot the fatband 
plot 'bulkek.dat' u 1:2  w lp lw 2 pt 7  ps 0.2 lc rgb 'black', 0 w l lw 2
 
# uncomment the following lines to plot the fatband 
#plot 'bulkek.dat' u 1:2:3  w lp lw 2 pt 7  ps 0.2 lc palette, 0 w l lw 2
# uncomment the following lines to plot the spin if necessary
#plot 'bulkek.dat' u 1:2 w lp lw 2 pt 7  ps 0.2, \
     'bulkek.dat' u 1:2:($3/6):($4/6) w vec
