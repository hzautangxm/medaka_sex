#!/bin/bash
for i in `ls /home/dywang/tangxm/workspace/medaka_data/`
do 
   /home/dywang/tangxm/workspace/seqtk-1.2/seqtk  sample -s 100 /home/dywang/tangxm/workspace/medaka_data/$i  2340572 > /home/dywang/tangxm/workspace/seqtk_result/$i
done
