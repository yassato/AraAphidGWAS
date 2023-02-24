# check phenotypes
pheno = read.csv("./data/AtZurich2018aphidsGWAportal_data.csv",header=TRUE)
aggregate(log_BbLe_max~Bolting,data=pheno,mean)
t.test(log_BbLe_max~Bolting,data=pheno)

resid_bolting = resid(lm(log_BbLe_max~Bolting,data=pheno))

pheno = data.frame(pheno,resid_bolting)
pheno = write.csv(pheno,"./data/AtZurich2018aphidsGWAportal.csv",row.names=FALSE)

# % of bolted plants
sum(pheno$Bolting) / nrow(pheno)

# aphid no. per day
df = read.csv("./data/aphid_No_per_day.csv")
pdf(file="./figures/aphid_No_per_day.pdf",width=9,height=6)

par(mfcol=c(2,5), mar=c(2,2,3,2))
plot(jitter(subset(df,Date=="20180707")$aphid_wing),
     jitter(subset(df,Date=="20180710")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     main="t = 20180707")

plot(jitter(subset(df,Date=="20180707")$aphid_wingless),
     jitter(subset(df,Date=="20180710")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25))

plot(jitter(subset(df,Date=="20180710")$aphid_wing),
     jitter(subset(df,Date=="20180713")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     main="t = 20180710")

plot(jitter(subset(df,Date=="20180710")$aphid_wingless),
     jitter(subset(df,Date=="20180713")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25))

plot(jitter(subset(df,Date=="20180713")$aphid_wing),
     jitter(subset(df,Date=="20180716")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     main="t = 20180713")

plot(jitter(subset(df,Date=="20180713")$aphid_wingless),
     jitter(subset(df,Date=="20180716")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25))

plot(jitter(subset(df,Date=="20180716")$aphid_wing),
     jitter(subset(df,Date=="20180719")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     main="t = 20180716")

plot(jitter(subset(df,Date=="20180716")$aphid_wingless),
     jitter(subset(df,Date=="20180719")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25))

plot(jitter(subset(df,Date=="20180719")$aphid_wing),
     jitter(subset(df,Date=="20180722")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     main="t = 20180719")

plot(jitter(subset(df,Date=="20180719")$aphid_wingless),
     jitter(subset(df,Date=="20180722")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25))

dev.off()

# load output of GWA-portal
# "log_BbLe_max_23338_pvals.csv" is available as a result of GWA-portal
out = read.csv("./data/log_BbLe_max_23338_pvals.csv.gz",header=TRUE)
nrow(out)

# cut-off by MAF
out = out[out$maf>0.025,]
nrow(out)

#########
# plots
library(gaston)

# Manhattan plot
png("./figures/log_BbLe_max_Man.png",width=6,height=3,res=600,units="in")
par(mai=c(1,1,0.25,0.25),bg=NA)
x = data.frame(out[,1:3])
x$score = 10^(-x$score)
colnames(x)[3] = "p"
manhattan(x, las=1)
abline(h = -log10(0.05/nrow(x)),lty=2,col="grey")
dev.off()

# QQ-plot
png("./figures/log_BbLe_max_QQ.png",width=4,height=4,res=220,units="in")
par(mai=c(1,1,0.25,0.25),bg=NA)
qqplot.pvalues(p=10^(-out$score),las=1,main="")
dev.off()

###############
# checking p-values of chr3-4579292 for other traits

manplot = function(fname) {
  out = read.csv(fname,header=TRUE)
  print(fname)
  print(subset(out,chr=="3"&pos=="4579292"))
  out = out[out$maf>0.025,]
  x = data.frame(out[,1:3])
  x$score = 10^(-x$score)
  colnames(x)[3] = "p"
  gaston::manhattan(x, las=1)
  abline(h = -log10(0.05/nrow(x)),lty=2,col="grey")
  return(NULL)
}

png("./figures/supp_Man.png",width=6,height=6,res=600,units="in")
par(mai=c(1,1,0.25,0.25),mfrow=c(3,1),bg=NA)
manplot("./data/log_BbLe_max_23338_pvals.csv.gz")
manplot("./data/BoltingAMM_42396_pvals.csv.gz") # bolting GWAS
manplot("./data/resid_bolting_42399_pvals.csv.gz") # residuals of log_BbLe_max corrected by bolting
dev.off()



png("./figures/supp_QQ.png",width=4,height=8,res=600,units="in")
par(mai=c(1,1,0.25,0.25),mfrow=c(3,1),bg=NA)

out = read.csv("./data/log_BbLe_max_23338_pvals.csv.gz",header=TRUE)
out = out[out$maf>0.025,]
gaston::qqplot.pvalues(p=10^(-out$score),las=1,main="")

out = read.csv("./data/BoltingAMM_42396_pvals.csv.gz",header=TRUE)
out = out[out$maf>0.025,]
gaston::qqplot.pvalues(p=10^(-out$score),las=1,main="")

out = read.csv("./data/resid_bolting_42399_pvals.csv.gz",header=TRUE)
out = out[out$maf>0.025,]
gaston::qqplot.pvalues(p=10^(-out$score),las=1,main="")

dev.off()

