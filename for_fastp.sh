#!/bin/bash 
count=0;#��¼����
lastfile="";#�����һ���ļ�
for i in `ls /home/dywang/tangxm/workspace/medaka_data/`
do 
   if ((   count%2==1  ))
     #��������� ��ִ������
     then /home/dywang/tangxm/workspace/fastP/fastp -i /home/dywang/tangxm/workspace/medaka_data/$lastfile -o /home/dywang/tangxm/workspace/last_clean_data/$lastfile -I /home/dywang/tangxm/workspace/medaka_data/$i -O /home/dywang/tangxm/workspace/last_clean_data/$i
   fi
   ((count++))
   lastfile=$i
done
