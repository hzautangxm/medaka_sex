#!/bin/bash
for i in `ls /home/dywang/tangxm/workspace/last_RNA-seq1/`
do
    #samtools��viewѡ�����-S ����sam�ļ�������-b ָ��������ļ�Ϊbam������ض���д��bam�ļ�
    samtools view -S /home/dywang/tangxm/workspace/last_RNA-seq1/$i -b > /home/dywang/tangxm/workspace/last_sam_trans_bam/${i%.*}.bam
    #�����е�bam�ļ���Ĭ�ϵ�Ⱦɫ��λ�ý�������
    samtools sort /home/dywang/tangxm/workspace/last_sam_trans_bam/${i%.*}.bam -o /home/dywang/tangxm/workspace/last_sam_trans_bam/last_sorted_bam/${i%.*}_sorted.bam
    # �����е������ļ����������������ļ�.bai��׺
    samtools index /home/dywang/tangxm/workspace/last_sam_trans_bam/last_sorted_bam/${i%.*}_sorted.bam
done