
# load output of GWA-portal
out = read.csv("../data/log_BbLe_max_23338_pvals.csv.gz",header=TRUE)
nrow(out)

# cut-off by MAF
out = out[out$maf>0.025,]
nrow(out)
saveRDS(out,file="./data/log_BbLe_max_23338_pvals_MAFcut.rds",compress=TRUE,version=2)

out = readRDS("./data/log_BbLe_max_23338_pvals_MAFcut.rds")

#########
# plots
library(myPlots)
png("./figures/log_BbLe_max_Man.png",width=6,height=4,res=220,units="in")
my_ManhattanPlot(chr=out$chr,pos=out$pos,p=10^(-out$score),colour=out$chr)
dev.off()

png("./figures/log_BbLe_max_QQ.png",width=4,height=4,res=220,units="in")
my_qqPlot(p=10^(-out$score))
dev.off()

#######
# inputs for Gowinda
# all SNPs
write.table(out[,1:2],file="AraAphidGWAS_all.txt",col.names=FALSE,row.names=FALSE,sep="\t")

# top SNPs
th = quantile(out$score,0.99)
top = out[out$score>th,1:2]
write.table(top,file="AraAphidGWAS_top.txt",col.names=FALSE,row.names=FALSE,sep="\t")
