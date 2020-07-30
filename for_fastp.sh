#!/bin/bash 
count=0;#记录总数
lastfile="";#保存第一个文件
for i in `ls /home/dywang/tangxm/workspace/medaka_data/`
do 
   if ((   count%2==1  ))
     #如果是奇数 则执行命令
     then /home/dywang/tangxm/workspace/fastP/fastp -i /home/dywang/tangxm/workspace/medaka_data/$lastfile -o /home/dywang/tangxm/workspace/last_clean_data/$lastfile -I /home/dywang/tangxm/workspace/medaka_data/$i -O /home/dywang/tangxm/workspace/last_clean_data/$i
   fi
   ((count++))
   lastfile=$i
done
