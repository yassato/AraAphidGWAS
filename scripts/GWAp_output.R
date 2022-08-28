# check phenotypes
pheno = read.csv("./data/20220301_AtZurich2018aphidsGWAp.csv",header=TRUE)
aggregate(log_BbLe_max~Bolting,data=pheno,median)
wilcox.test(log_BbLe_max~Bolting,data=pheno)

# % of bolted plants
sum(pheno$Bolting) / nrow(pheno)


# aphid no. per day
df = read.csv("./data/aphid_No_per_day.csv")
pdf(file="./figures/aphid_No_per_day.pdf",width=12,height=6)

par(mfcol=c(2,5))
plot(jitter(subset(df,Date=="20180707")$aphid_wing),
     jitter(subset(df,Date=="20180710")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     ylab="Total no. of aphids at t+1",
     xlab="No. of winged aphids at t",
     main="t = 20180707")

plot(jitter(subset(df,Date=="20180707")$aphid_wingless),
     jitter(subset(df,Date=="20180710")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     ylab="Total no. of aphids at t+1",
     xlab="No. of wingless aphids at t")

plot(jitter(subset(df,Date=="20180710")$aphid_wing),
     jitter(subset(df,Date=="20180713")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     ylab="Total no. of aphids at t+1",
     xlab="No. of winged aphids at t",
     main="t = 20180710")

plot(jitter(subset(df,Date=="20180710")$aphid_wingless),
     jitter(subset(df,Date=="20180713")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     ylab="Total no. of aphids at t+1",
     xlab="No. of wingless aphids at t")

plot(jitter(subset(df,Date=="20180713")$aphid_wing),
     jitter(subset(df,Date=="20180716")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     ylab="Total no. of aphids at t+1",
     xlab="No. of winged aphids at t",
     main="t = 20180713")

plot(jitter(subset(df,Date=="20180713")$aphid_wingless),
     jitter(subset(df,Date=="20180716")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     ylab="Total no. of aphids at t+1",
     xlab="No. of wingless aphids at t")

plot(jitter(subset(df,Date=="20180716")$aphid_wing),
     jitter(subset(df,Date=="20180719")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     ylab="Total no. of aphids at t+1",
     xlab="No. of winged aphids at t",
     main="t = 20180716")

plot(jitter(subset(df,Date=="20180716")$aphid_wingless),
     jitter(subset(df,Date=="20180719")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     ylab="Total no. of aphids at t+1",
     xlab="No. of wingless aphids at t")

plot(jitter(subset(df,Date=="20180719")$aphid_wing),
     jitter(subset(df,Date=="20180722")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     ylab="Total no. of aphids at t+1",
     xlab="No. of winged aphids at t",
     main="t = 20180719")

plot(jitter(subset(df,Date=="20180719")$aphid_wingless),
     jitter(subset(df,Date=="20180722")$aphid_total),
     las=1,bty="L",pch=16,col=grey(0.25,0.25),
     ylab="Total no. of aphids at t+1",
     xlab="No. of wingless aphids at t")

dev.off()

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
library(gaston)
png("./figures/log_BbLe_max_Man.png",width=6,height=3,res=600,units="in")
par(mai=c(1,1,0.25,0.25),bg=NA)
x = data.frame(out[,1:3])
x$score = 10^(-x$score)
colnames(x)[3] = "p"
manhattan(x, las=1)
abline(h = -log10(0.05/nrow(x)),lty=2,col="grey")
dev.off()

png("./figures/log_BbLe_max_QQ.png",width=4,height=4,res=220,units="in")
par(mai=c(1,1,0.25,0.25),bg=NA)
qqplot.pvalues(p=10^(-out$score),las=1,main="")
dev.off()

#######
# inputs for Gowinda
# all SNPs
write.table(out[,1:2],file="./gowinda/AraAphidGWAS_all.txt",col.names=FALSE,row.names=FALSE,sep="\t")

# top SNPs
th = quantile(out$score,0.99)
top = out[out$score>th,1:2]
write.table(top,file="./gowinda/AraAphidGWAS_top.txt",col.names=FALSE,row.names=FALSE,sep="\t")

# ! run Gowinda, and get input
GOout = read.table("./gowinda/AraAphidGWAS_top_out.txt",header=FALSE)

# OUTPUT FORMAT 
# pasted from the Gowinda official wiki, https://sourceforge.net/p/gowinda/wiki/Manual/#output
# column 1: the GO term
# column 2: on the average this number of genes are found per simulation for the given GO category. In --mode gene every gene is only counted once whereas in --mode snp a single gene may be counted several times dependent on the SNP
# column 3: using the candidate SNPs this number of genes was found for the given GO category. In --mode gene every gene is only counted once whereas in --mode snp a single gene may be counted several times dependent on the SNP
# column 4: p-value (uncorrected for multiple testing)
# column 5: FDR (p-value after adjustment for multiple testing)
# column 6: the number of genes (uniq) found for the given GO category
# column 7: the number of genes that could at most be found for the given GO category, i.e.: genes of the given GO category that have an corresponding entry in the annotation file and contain at least one SNP
# column 8: total number of genes for the given GO category in the GO association file
# column 9: description of the given GO term
# column 10: comma separated list of the gene_ids found for the given GO category

colnames(GOout) = c("GO","avg_genes","no_target_genes","p_val","FDR","no_uniq_genes","no_entry_genes","total_genes","description","AGIs")
GOout = data.frame(GOout$GO,GOout$p_val)
write.csv(GOout,"./gowinda/tempGO.csv",row.names=FALSE)


# A treemap R script produced by the Revigo server at http://revigo.irb.hr/
# If you found Revigo useful in your work, please cite the following reference:
# Supek F et al. "REVIGO summarizes and visualizes long lists of Gene Ontology
# terms" PLoS ONE 2011. doi:10.1371/journal.pone.0021800

# author: Anton Kratz <anton.kratz@gmail.com>, RIKEN Omics Science Center, Functional Genomics Technology Team, Japan
# created: Fri, Nov 02, 2012  7:25:52 PM
# last change: Fri, Nov 09, 2012  3:20:01 PM

# -----------------------------------------------------------------------------
# If you don't have the treemap package installed, uncomment the following line:
# install.packages( "treemap" );
library(treemap) 								# treemap package by Martijn Tennekes

# Set the working directory if necessary
# setwd("C:/Users/username/workingdir");

# --------------------------------------------------------------------------
# Here is your data from Revigo. Scroll down for plot configuration options.

revigo.names <- c("term_ID","description","frequency","value","uniqueness","dispensability","representative");
revigo.data <- rbind(c("GO:0016042","lipid catabolic process",0.472402764599779,2.85387196432176,1,0,"lipid catabolic process"),
                     c("GO:0045893","positive regulation of transcription, DNA-templated",0.718592772874886,4.50863830616573,0.666357779402151,0,"positive regulation of transcription, DNA-templated"),
                     c("GO:0030322","stabilization of membrane potential",0.00378250332450142,2.03039773515146,0.863738536719825,0.14725665,"positive regulation of transcription, DNA-templated"),
                     c("GO:0009862","systemic acquired resistance, salicylic acid mediated signaling pathway",0.00316934834966438,2.55346283292636,0.819979825274306,0.16928872,"positive regulation of transcription, DNA-templated"),
                     c("GO:0007166","cell surface receptor signaling pathway",0.944867673284846,2.20697834015402,0.757450668715225,0.32475835,"positive regulation of transcription, DNA-templated"),
                     c("GO:0080151","positive regulation of salicylic acid mediated signaling pathway",0.000169860499785934,3.31247103878537,0.788357074749628,0.42523503,"positive regulation of transcription, DNA-templated"),
                     c("GO:1900057","positive regulation of leaf senescence",0.00038115038976356,2.12801864615663,0.788788928155452,0.43394081,"positive regulation of transcription, DNA-templated"),
                     c("GO:0006355","regulation of transcription, DNA-templated",9.89271279398399,2.15015080439474,0.721557842926762,0.57511113,"positive regulation of transcription, DNA-templated"),
                     c("GO:0048868","pollen tube development",0.00841845208695167,2.35892268667463,1,0,"pollen tube development"),
                     c("GO:0120029","proton export across plasma membrane",0.0144588571769003,2.48798303050387,0.962904695847844,0,"proton export across plasma membrane"),
                     c("GO:0006612","protein targeting to membrane",0.177446221130033,2.28133226468379,0.962193827167619,0.18533521,"proton export across plasma membrane"),
                     c("GO:0007031","peroxisome organization",0.0916252393479445,2.30016227413275,0.994431447135932,0.00687786,"peroxisome organization"));

stuff <- data.frame(revigo.data);
names(stuff) <- revigo.names;

stuff$value <- as.numeric( as.character(stuff$value) );
stuff$frequency <- as.numeric( as.character(stuff$frequency) );
stuff$uniqueness <- as.numeric( as.character(stuff$uniqueness) );
stuff$dispensability <- as.numeric( as.character(stuff$dispensability) );

# by default, outputs to a PDF file
pdf(file="./figures/revigo_treemap.pdf", width=12, height=6) # width and height are in inches

# check the tmPlot command documentation for all possible parameters - there are a lot more
treemap(
  stuff,
  index = c("representative","description"),
  vSize = "value",
  type = "categorical",
  vColor = "representative",
  title = "Revigo TreeMap",
  inflate.labels = FALSE,      # set this to TRUE for space-filling group labels - good for posters
  lowerbound.cex.labels = 0,   # try to draw as many labels as possible (still, some small squares may not get a label)
  bg.labels = "#CCCCCCAA",   # define background color of group labels
  # "#CCCCCC00" is fully transparent, "#CCCCCCAA" is semi-transparent grey, NA is opaque
  position.legend = "none"
)

dev.off()



