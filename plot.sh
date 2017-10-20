#gnuplot
set terminal png
set output 'D:\gputemp.png'
set size 1.75,1.25
set grid
set xdata time
set ydata
set timefmt ";%H:%M:%S";
set format x ";%H:%M";
set format y ";% g";
set mytics 10
set mxtics 4
set ticscale 3 1
set key title ";GPU List";
set key reverse Left outside
set title ";Tools GPU Temps";
set xlabel ";Time of Day";
set xrange [ ";00:00"; : ";23:55"; ] noreverse nowriteback
set ylabel ";Temperature (C) "; 0.000000,0.000000  font ";";
set yrange [ 50.0000 : 120.0000 ] noreverse nowriteback
set colorbox default
plot 'D:\gputemp.txt' u 1:2 with line title ";GPU 0";, '' u 1:3 with line title ";GPU 1";, '' u 1:4 with line title ";GPU 2";, '' u 1:5 with line title ";GPU 3";, '' u 1:6 with line title ";GPU 4";, '' u 1:7 with line title ";GPU 5";, '' u 1:8 with line title ";GPU 6";, '' u 1:9 with line title ";GPU 7";