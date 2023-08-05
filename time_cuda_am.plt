set term pdf
set terminal pdf size 5in,3in
set output 'time-cuda-am.pdf'

set termoption dashed
set datafile separator ','
set style fill solid border lt -1
set style textbox opaque noborder
set boxwidth 0.20 abs
set xtics rotate by 45 right
set grid y
set key above font ",8"
set logscale y 10
set ylabel 'Runtime (ms)'

# set title 'AM time for all batch sizes (cuda)' offset 0,-0.8
plot 'time-am.csv' \
      using ($1-0.20):10 title 'Dynamic Monolithic'  with boxes fill pattern 1, \
  ''  using 1:16:xtic(2) title 'Dynamic Levelwise'   with boxes fill pattern 2, \
  ''  using ($1+0.20):18 title 'Dynamic HyPR (GPU)'  with boxes fill pattern 3 noborder, \
  ''  using ($1+0.40):4  title 'Incremental nvGraph' with boxes fill pattern 3 noborder, \
  ''  using ($1+0.20):(0.9*$18):23 title '' with labels font ",12" rotate right, \
  ''  using ($1+0.40):(0.9*$4):22  title '' with labels font ",12" rotate right
