#!/bin/bash 
count=0;#��¼����
lastfile="";#�����һ���ļ�
for i in `ls /home/dywang/tangxm/workspace/last_clean_data/`
do
    if (( $count % 2==1 ))  
    #��������� ��ִ������
       #then echo $i $lastfile
      then hisat2 -p 2 -t -x /home/dywang/tangxm/workspace/last_index2/result_index -1 /home/dywang/tangxm/workspace/last_clean_data/$lastfile -2 /home/dywang/tangxm/workspace/last_clean_data/$i -S /home/dywang/tangxm/workspace/last_RNA-seq1/${i%_*}.sam;
    fi
   ((count++))
   lastfile=$i
done

