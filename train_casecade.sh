BIN=./opencv_traincascade
$BIN -data classifier -vec samples.vec -bg data/img_show_red_bg.lst\
   -numStages 20 -minHitRate 0.999 -maxFalseAlarmRate 0.5 -numPos 468\
   -numNeg 600 -w 80 -h 40 -mode ALL -precalcValBufSize 1024\
   -precalcIdxBufSize 1024 -featureType LBP
