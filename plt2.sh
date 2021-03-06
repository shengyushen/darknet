gnuplot -p -e 'set key left;\
  set logscale y;\
  set xlabel "resolution";\
  set ylabel "Feature memory(MB)";\
  set xrange [0:2000];\
  plot "vgg19" u 1:($2/128):(sprintf("%d",($2/128))) with labels notitle,\
       "" u 1:($2/128) with linesp title "VGG19 backbone",\
       "resnet50" u 1:($2/128):(sprintf("%d",($2/128))) with labels notitle,\
       "" u 1:($2/128) with linesp title "resnet50 backbone",\
       "resnet101" u 1:($2/128):(sprintf("%d",($2/128))) with labels notitle,\
       "" u 1:($2/128) with linesp title "resnet101 backbone",\
       "resnet152" u 1:($2/128):(sprintf("%d",($2/128))) with labels notitle,\
       "" u 1:($2/128) with linesp title "resnet152 backbone",\
       "yolo_comp_feature" u 1:(4*$3):(sprintf("%d",(4*$3))) with labels notitle,\
       "" u 1:(4*$3) with linesp title "YOLOv3 arch + DarkNet53 backbone"'
