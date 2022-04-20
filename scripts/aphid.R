library(dplyr)
library(tidyverse)
library(ggplot2)
library(ggpubr)
library(ggsignif)
AphidsNo <- read.delim("./data/AphidsNo.txt")

#arrange the data
aphid<-AphidsNo %>% gather("time", "aphids",6:9)
########
#remove 0
#aphidno0<-filter(AphidsNo,t1!=0)
#aphidno0<-aphidno0 %>% gather("time", "aphids",6:9)
########

aphid$aphids<-as.numeric(aphid$aphids)
aphid$Mutant<-factor(aphid$Mutant,levels=c('AT3G13882','WT','EPFL3','MYB26'))
#plot
#ggplot(aphid,mapping=aes(x=time,y=aphids,color=Mutant))+geom_boxplot()+geom_jitter()+facet_wrap(facets = vars(Mutant))+ ylab("Aphids number")

#check the equal variance between two groups
#tapply(aphid$aphids,aphid$Mutant,var)
#  168      EPFL3      MYB26         WT 
#80.86603 1709.82308  502.63889  663.31731 
#difference quite big, 3 ways to solve
#1.correct the positive skew by log-transforming our count data, which should also reduce the difference in variance between the groups.
#2.use a variant of the t-test that takes differences in variance into account,
#3.non-parametric test such as a Mann-Whitney test

#log transforming
logaphid<-aphid
logaphid$aphids<-log10(aphid$aphids+1)

#check distribution
#hist(logaphid$aphids)
#plot(logaphid$Mutant,logaphid$aphids)

#check equal variance
#tapply(logaphid$aphids,logaphid$Mutant,var)
#168    EPFL3    MYB26       WT 
#1.126188 2.779955 2.209851 2.532278 

#ggplot(data=logaphid,mapping=aes(x=Mutant,y=aphids,color=Mutant))+geom_boxplot()+geom_jitter()+
  #ggtitle("") +
  #xlab("Mutant") + ylab("Aphids number log(n+1)")
ggplot(data=logaphid,mapping=aes(x=Mutant,y=aphids))+geom_boxplot()+geom_jitter()+
  ggtitle("") +
  xlab("Plant genotypes") + ylab("Aphids number log10(n+1)")+theme_classic()
#2 group t-test & willtest
#plot with test

compare_means(aphids~Mutant,logaphid,method = "wilcox.test",paired = FALSE,ref.group = "MYB26")
my_comparisons<-list(c("WT","MYB26"),c("WT","AT3G13882"),c("WT","EPFL3"))

ggboxplot(logaphid, x="Mutant", y="aphids",xlab = "Plant genotypes",ylab = "Aphids number log10(n+1)")+ 
  stat_compare_means(label = "p.signif", method = "wilcox.test", ref.group = "WT")

#ggpaired(logaphid,x="Mutant",y="aphids",color="Mutant")+stat_compare_means(comparisons=my_comparisons)
#size
compare_means(size~Mutant,aphidgr,method = "wilcox.test",paired = FALSE,ref.group = "AT3G13882")
my_comparisons<-list(c("WT","MYB26"),c("WT","AT3G13882"),c("WT","EPFL3"))
#ggpaired(AphidsNo,x="Mutant",y="size",color="Mutant")+stat_compare_means(comparisons=my_comparisons)
#########
#growth rate
aphidgr<-AphidsNo[,1:4]
aphidgr$Mutant<-factor(aphidgr$Mutant,levels=c('AT3G13882','WT','EPFL3','MYB26'))
#aphidgr<-mutate(aphidgr,t1=(AphidsNo$t2-AphidsNo$t1)/AphidsNo$t1)
#aphidgr<-mutate(aphidgr,t2=(AphidsNo$t3-AphidsNo$t2)/AphidsNo$t2)
#aphidgr<-mutate(aphidgr,t3=(AphidsNo$t4-AphidsNo$t3)/AphidsNo$t3)
#aphidgr[which(is.na(aphidgr[,6])),6]<-0
#aphidgr[which(is.na(aphidgr[,7])),7]<-0
#aphidgr[which(is.na(aphidgr[,8])),8]<-0
#aphid<-aphidgr %>% gather("time", "aphids",6:8)
#tapply(aphidgr$size,aphidgr$Mutant,var)
#aphidgr<-mutate(aphidgr,sizelog=log10(size+1))
#tapply(aphidgr$sizelog,aphidgr$Mutant,var)
ggplot(data=aphidgr,mapping=aes(x=Mutant,y=size))+geom_boxplot()+geom_jitter()+
  ggtitle("") +
  xlab("Plant genotypes") + ylab("Initial diameter(cm)")+theme_classic()

ggboxplot(aphidgr, x="Mutant", y="size",xlab = "Plant genotypes",ylab = "Initial diameter(cm)")+ 
  stat_compare_means(label = "p.signif", method = "wilcox.test", ref.group = "WT")

#flower
#hist(AphidsNo$flowering)
#tapply(AphidsNo$flowering,AphidsNo$Mutant,var)
AphidsNo$Mutant<-factor(AphidsNo$Mutant,levels=c('AT3G13882','WT','EPFL3','MYB26'))
ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=flowering))+geom_boxplot()+geom_jitter()+
  ggtitle("") +
  xlab("Plant genotype") + ylab("Flowering requires (day)")+theme_classic()
compare_means(flowering~Mutant,AphidsNo,method = "wilcox.test",paired = FALSE,ref.group = "EPFL3")

ggboxplot(AphidsNo, x="Mutant", y="flowering",xlab = "Plant genotypes",ylab = "Flowering requires (day)")+ 
  stat_compare_means(label = "p.signif", method = "wilcox.test", ref.group = "WT")
