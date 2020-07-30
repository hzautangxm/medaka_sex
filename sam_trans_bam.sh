#!/bin/bash
for i in `ls /home/dywang/tangxm/workspace/last_RNA-seq1/`
do
    #samtools的view选项，参数-S 输入sam文件；参数-b 指定输出的文件为bam；最后重定向写入bam文件
    samtools view -S /home/dywang/tangxm/workspace/last_RNA-seq1/$i -b > /home/dywang/tangxm/workspace/last_sam_trans_bam/${i%.*}.bam
    #将所有的bam文件按默认的染色体位置进行排序
    samtools sort /home/dywang/tangxm/workspace/last_sam_trans_bam/${i%.*}.bam -o /home/dywang/tangxm/workspace/last_sam_trans_bam/last_sorted_bam/${i%.*}_sorted.bam
    # 将所有的排序文件建立索引，索引文件.bai后缀
    samtools index /home/dywang/tangxm/workspace/last_sam_trans_bam/last_sorted_bam/${i%.*}_sorted.bam
done