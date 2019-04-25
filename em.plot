set term postscript enhanced color 'Helvetica-Bold,16'
set output 'em.ps'
set xr [0:200]
set style line 1 lt 1 lw 2 lc rgb 'red'
set style line 2 lt 1 lw 2 lc rgb 'blue'
set xl 'Frequency (rad/sec)'
set yl 'Real / Im part amplitude'
plot 'freq.dat' u 1:2 w l ti 'Real' ls 1,\
     '' u 1:3 w l ti 'Im' ls 2
set output
! ps2pdf em.ps
! rm em.ps


