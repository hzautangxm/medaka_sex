gtf_address=/home/dywang/tangxm/workspace/oryzias_latipes.gtf/Oryzias_latipes.ASM223467v1.100.gtf
feature=/home/dywang/tangxm/workspace/subread-1.6.0-Linux-x86_64/bin/featureCounts
for i in `ls /home/dywang/tangxm/workspace/last_sam_trans_bam/last_sorted_bam/`
  do
    if [[ $i == *sorted.bam ]]
        then $feature -T 16 -p -t exon -g gene_id -s 1 -a $gtf_address  -o /home/dywang/tangxm/workspace/last_featurecountResult/${i%.*}_counts.txt /home/dywang/tangxm/workspace/last_sam_trans_bam/last_sorted_bam/$i;
    fi
  done