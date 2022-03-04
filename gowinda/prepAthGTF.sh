################
# prep Ath gtf #
################

# GFF file downloaded from TAIR
# NOTE: Manually delete "Chr" from GTF using a text editor!! 
python Gff2Gtf.py --input ../data/TAIR10_GFF3_genes.gff > TAIR10_GFF3_genes.gtf"

