./darknet detector train cfg/coco.data cfg/yolov3.cfg_64_16 darknet53.conv.74 2> coco.stderr_64_16 |tee coco.stdout_64_16
./darknet detector train cfg/coco.data cfg/yolov3.cfg_64_8  darknet53.conv.74 2> coco.stderr_64_8  |tee coco.stdout_64_8 
./darknet detector train cfg/coco.data cfg/yolov3.cfg_32_8  darknet53.conv.74 2> coco.stderr_32_8  |tee coco.stdout_32_8
./darknet detector train cfg/coco.data cfg/yolov3.cfg_32_4  darknet53.conv.74 2> coco.stderr_32_4  |tee coco.stdout_32_4
