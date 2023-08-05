set term pdf
set terminal pdf size 5in,3in
set output 'time-omp-am.pdf'

set termoption dashed
set datafile separator ','
set style fill solid border lt -1
set style textbox opaque noborder
set boxwidth 0.20 abs
set xtics rotate by 45 right
set grid y
set key above font ",12"
set logscale y 10
set ylabel 'Runtime (ms)'

# set title 'AM time for all batch sizes (omp)' offset 0,-0.8
plot 'time-am.csv' \
      using ($1-0.20):7  title 'DT_{MLPR}'       with boxes fill pattern 1, \
  ''  using 1:13:xtic(2) title 'DT_{LWPR}'       with boxes fill pattern 2, \
  ''  using ($1+0.20):19 title 'DT_{HYPR (CPU)}' with boxes fill pattern 3 noborder, \
  ''  using ($1+0.40):11 title 'Static_{LWPR}'   with boxes fill pattern 3 noborder, \
  ''  using ($1+0.20):(0.9*$19):21 title ''      with labels font ",12" rotate right, \
  ''  using ($1+0.40):(0.9*$11):20 title ''      with labels font ",12" rotate right
