set key right bottom
set logscale y 
set title "Feature memory size of classification, detection and video detection with batch size 1"
set xlabel "resolution"
set ylabel "Feature memory(MB) bs=1"
set xrange [0:2000]
set yrange [10:500000]
set label 1 at 10, 18800 '16GB'
set label 2 at 10, 35800 '32GB'
set label 3 at 1600,6.85 '2048*1024'
set arrow from 400,9935 to 1400,131502
set arrow from 1697,10 to 1697,131502 nohead 
plot "vgg19" u 1:($2/128):(sprintf("%d",($2/128))) with labels notitle,\
       "" u 1:($2/128) with linesp  title "Classification : VGG19 backbone",\
       "resnet50" u 1:($2/128) with linesp  title "Classification : resnet50 backbone",\
       "resnet101" u 1:($2/128) with linesp  title "Classification : resnet101 backbone",\
       "resnet152" u 1:($2/128) with linesp  title "Classification : resnet152 backbone",\
       "yolo_comp_feature" u 1:(4*$3):(sprintf("%d",(4*$3))) with labels notitle,\
       "" u 1:(4*$3) with linesp  title "Detection : YOLOv3 arch + DarkNet53 backbone",\
       "maskrcnn" u 1:2:(sprintf("%d\nMask-RCNN\nsegmentation",$2)) with labels notitle,\
       "" u 1:2 with linesp title "Segmentation : Mask-RCNN arch + Resnet101 backbone",\
       "deeplab" u 1:($2/128):(sprintf("%d\n deeplab\nsegmentation",$2/128)) with labels notitle,\
       "" u 1:($2/128) with linesp title "Segmentation : Deeplab arch + Resnet101 backbone",\
       '' using (300):(9935):(sprintf("%d\nVideo detection",9935)) with labels notitle,\
       '' using (1697):(231502):(sprintf("%dGB\nVideo detection forecasted",231)) with labels notitle,\
       16*1024 notitle,\
       32*1024 notitle

