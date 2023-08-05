set term pdf
set terminal pdf size 10in,6in
set output 'time-cuda-all.pdf'

set termoption dashed
set datafile separator ','
set key off


set logscale x 10
set logscale y 10
set grid xtics
set xtics (500, 1000, 2000, 5000, 10000)
set style line 1 linetype 1 linewidth 3 pointtype 2 pointsize 1
set style line 2 linetype 8 linewidth 3 pointtype 5 pointsize 1
set style line 3 linetype 7 linewidth 3 pointtype 7 pointsize 1 dashtype 2
set style line 4 linetype 6 linewidth 3 pointtype 9 pointsize 1 dashtype 2
# set label 1 at screen 0.50, screen -0.02 'Batch size' center font ',16'
# set label 2 at screen 0.01, screen 0.50 rotate left 'Runtime (ms)' center font ',16'

set multiplot layout 3,4

set title 'arabic-2005' offset 0,-0.8
plot [500:10000] 'time-all/arabic-2005.csv' \
      using 1:9  title 'Dynamic Monolithic'  linestyle 1 with linespoints, \
  ''  using 1:15 title 'Dynamic Levelwise'   linestyle 2 with linespoints, \
  ''  using 1:17 title 'Dynamic HyPR (GPU)'  linestyle 3 with linespoints, \
  ''  using 1:2  title 'Incremental nvGraph' linestyle 4 with linespoints

set title 'uk-2005'
plot [500:10000] 'time-all/uk-2005.csv' \
      using 1:9  title 'Dynamic Monolithic'  linestyle 1 with linespoints, \
  ''  using 1:15 title 'Dynamic Levelwise'   linestyle 2 with linespoints, \
  ''  using 1:17 title 'Dynamic HyPR (GPU)'  linestyle 3 with linespoints, \
  ''  using 1:2  title 'Incremental nvGraph' linestyle 4 with linespoints

set title 'it-2004'
plot [500:10000] 'time-all/it-2004.csv' \
      using 1:9  title 'Dynamic Monolithic'  linestyle 1 with linespoints, \
  ''  using 1:15 title 'Dynamic Levelwise'   linestyle 2 with linespoints, \
  ''  using 1:17 title 'Dynamic HyPR (GPU)'  linestyle 3 with linespoints, \
  ''  using 1:2  title 'Incremental nvGraph' linestyle 4 with linespoints

set title 'soc-Epinions1'
plot [500:10000] 'time-all/soc-Epinions1.csv' \
      using 1:9  title 'Dynamic Monolithic'  linestyle 1 with linespoints, \
  ''  using 1:15 title 'Dynamic Levelwise'   linestyle 2 with linespoints, \
  ''  using 1:17 title 'Dynamic HyPR (GPU)'  linestyle 3 with linespoints, \
  ''  using 1:2  title 'Incremental nvGraph' linestyle 4 with linespoints

set title 'soc-LiveJournal1'
plot [500:10000] 'time-all/soc-LiveJournal1.csv' \
      using 1:9  title 'Dynamic Monolithic'  linestyle 1 with linespoints, \
  ''  using 1:15 title 'Dynamic Levelwise'   linestyle 2 with linespoints, \
  ''  using 1:17 title 'Dynamic HyPR (GPU)'  linestyle 3 with linespoints, \
  ''  using 1:2  title 'Incremental nvGraph' linestyle 4 with linespoints

set title 'wiki-Talk'
plot [500:10000] 'time-all/wiki-Talk.csv' \
      using 1:9  title 'Dynamic Monolithic'  linestyle 1 with linespoints, \
  ''  using 1:15 title 'Dynamic Levelwise'   linestyle 2 with linespoints, \
  ''  using 1:17 title 'Dynamic HyPR (GPU)'  linestyle 3 with linespoints, \
  ''  using 1:2  title 'Incremental nvGraph' linestyle 4 with linespoints

set title 'cit-Patents'
plot [500:10000] 'time-all/cit-Patents.csv' \
      using 1:9  title 'Dynamic Monolithic'  linestyle 1 with linespoints, \
  ''  using 1:15 title 'Dynamic Levelwise'   linestyle 2 with linespoints, \
  ''  using 1:17 title 'Dynamic HyPR (GPU)'  linestyle 3 with linespoints, \
  ''  using 1:2  title 'Incremental nvGraph' linestyle 4 with linespoints

set title 'coPapersDBLP'
plot [500:10000] 'time-all/coPapersDBLP.csv' \
      using 1:9  title 'Dynamic Monolithic'  linestyle 1 with linespoints, \
  ''  using 1:15 title 'Dynamic Levelwise'   linestyle 2 with linespoints, \
  ''  using 1:17 title 'Dynamic HyPR (GPU)'  linestyle 3 with linespoints, \
  ''  using 1:2  title 'Incremental nvGraph' linestyle 4 with linespoints

set title 'amazon-2008'
plot [500:10000] 'time-all/amazon-2008.csv' \
      using 1:9  title 'Dynamic Monolithic'  linestyle 1 with linespoints, \
  ''  using 1:15 title 'Dynamic Levelwise'   linestyle 2 with linespoints, \
  ''  using 1:17 title 'Dynamic HyPR (GPU)'  linestyle 3 with linespoints, \
  ''  using 1:2  title 'Incremental nvGraph' linestyle 4 with linespoints

set title 'italy\_osm'
plot [500:10000] 'time-all/italy_osm.csv' \
      using 1:9  title 'Dynamic Monolithic'  linestyle 1 with linespoints, \
  ''  using 1:15 title 'Dynamic Levelwise'   linestyle 2 with linespoints, \
  ''  using 1:17 title 'Dynamic HyPR (GPU)'  linestyle 3 with linespoints, \
  ''  using 1:2  title 'Incremental nvGraph' linestyle 4 with linespoints

set title 'Linux\_call\_graph'
plot [500:10000] 'time-all/Linux_call_graph.csv' \
      using 1:9  title 'Dynamic Monolithic'  linestyle 1 with linespoints, \
  ''  using 1:15 title 'Dynamic Levelwise'   linestyle 2 with linespoints, \
  ''  using 1:17 title 'Dynamic HyPR (GPU)'  linestyle 3 with linespoints, \
  ''  using 1:2  title 'Incremental nvGraph' linestyle 4 with linespoints

set key center center
set border 0
unset tics
unset title
set yrange [0:1]
plot 2 t 'Dynamic Monolithic'  linestyle 1 with linespoints, \
     2 t 'Dynamic Levelwise'   linestyle 2 with linespoints, \
     2 t 'Dynamic HyPR (GPU)'  linestyle 3 with linespoints, \
     2 t 'Incremental nvGraph' linestyle 4 with linespoints

unset multiplot
