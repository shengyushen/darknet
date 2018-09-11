set key right bottom
set logscale y 
set title "Feature memory size of classification, detection and video detection with batch size 1"
set xlabel "resolution"
set ylabel "Feature memory(MB) bs=1"
set xrange [0:2000]
set yrange [10:500000]
set label 1 at 10, 18800 '16GB'
set label 2 at 10, 35800 '32GB'
set label 4 at 600,2000 'Classification' center rotate by 20
set label 5 at 1500,5000 'Detection' center rotate by 10
set arrow from 400,9935 to 1400,131502
plot   "resnet152" u 1:($2/128) with linesp notitle,\
       "yolo_comp_feature" u 1:(4*$3):(sprintf("%d",(4*$3))) with labels notitle,\
       "" u 1:(4*$3) with linesp notitle,\
       '' using (300):(9935):(sprintf("%d\nVideo detection\n at 300*300",9935)) with labels notitle,\
       '' using (1697):(231502):(sprintf("%dGB\nVideo detection\n at 2048*1024",231)) with labels notitle,\
       16*1024 notitle,\
       32*1024 notitle

