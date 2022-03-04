######################
# GeneSet for GOslim #
######################

# input file downloaded from TAIR
d = read.delim("../data/ATH_GO_GOSLIM.txt",sep="\t",as.is=TRUE,header=FALSE,skip=4)

ulg = data.frame(d$V1,d$V6)
colnames(ulg) = c("locus","GOid")

GeneSet = c()
for(i in levels(factor(ulg$GOid))) {
  
  tmp = try(d[d$V6==i,"V5"][1])
  
  if(class(tmp)!="try-error"){
    annotation = tmp
    genes = paste(ulg$locus[ulg$GOid==i],collapse = " ")
    GeneSet = rbind(GeneSet, c(i, annotation, genes))
  } else {
    annotation = NA
    genes = paste(ulg$locus[ulg$GOid==i],collapse = " ")
    GeneSet = rbind(GeneSet, c(i, annotation, genes))
  }
}

write.table(GeneSet,"AthGeneSetGOslim.txt", row.names=FALSE, quote=FALSE, sep="\t", col.names=FALSE)
