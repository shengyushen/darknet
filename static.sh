cat coco.stderr_$1 |grep BFLOPs|awk '{ssy=ssy+$(NF-1)} END{print "GFLOP " ssy*2}'
cat coco.stdout_$1 |grep "size are all"|grep weight -v|awk '{ssy=ssy+$NF} END{print "feature " ssy*2/(1024*1024)}'
