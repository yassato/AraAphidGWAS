# command to run Gowinda
java -jar Gowinda-1.12.jar --snp-file AraAphidGWAS_all.txt --candidate-snp-file AraAphidGWAS_top.txt --gene-set-file AthGeneSetGOslim.txt --annotation-file TAIR10_GFF3_genes.gtf --simulations 1000000 --min-significance 1 --gene-definition updownstream1000 --threads 4 --output-file AraAphidGWAS_top_out.txt --mode gene --min-genes 2

