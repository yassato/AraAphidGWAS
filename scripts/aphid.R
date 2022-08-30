library(dplyr)
library(tidyverse)
library(ggplot2)
library(ggpubr)
library(cowplot)
AphidsNo <- read.delim("./data/AphidsNo.txt")
AphidsNo$Mutant <-factor(AphidsNo$Mutant,levels=c('AT3G13882','WT','EPFL3','MYB26'))


res = glm(t2~Mutant,data=subset(AphidsNo,Mutant=="WT"|Mutant=="AT3G13882"),family="poisson")
summary(res)
pval1 = coef(summary(res))[2,4]

res = glm(t2~Mutant,data=subset(AphidsNo,Mutant=="WT"|Mutant=="EPFL3"),family="poisson")
summary(res)
pval2 = coef(summary(res))[2,4]

res = glm(t2~Mutant,data=subset(AphidsNo,Mutant=="WT"|Mutant=="MYB26"),family="poisson")
summary(res)
pval3 = coef(summary(res))[2,4]

pvec = c(pval1,pval2,pval3)
p.adjust(pvec,method="bonferroni")


res = glm(t3~Mutant,data=subset(AphidsNo,Mutant=="WT"|Mutant=="AT3G13882"),family="poisson")
summary(res)
pval1 = coef(summary(res))[2,4]

res = glm(t3~Mutant,data=subset(AphidsNo,Mutant=="WT"|Mutant=="EPFL3"),family="poisson")
summary(res)
pval2 = coef(summary(res))[2,4]

res = glm(t3~Mutant,data=subset(AphidsNo,Mutant=="WT"|Mutant=="MYB26"),family="poisson")
summary(res)
pval3 = coef(summary(res))[2,4]

pvec = c(pval1,pval2,pval3)
p.adjust(pvec,method="bonferroni")


res = glm(t4~Mutant,data=subset(AphidsNo,Mutant=="WT"|Mutant=="AT3G13882"),family="poisson")
summary(res)
pval1 = coef(summary(res))[2,4]

res = glm(t4~Mutant,data=subset(AphidsNo,Mutant=="WT"|Mutant=="EPFL3"),family="poisson")
summary(res)
pval2 = coef(summary(res))[2,4]

res = glm(t4~Mutant,data=subset(AphidsNo,Mutant=="WT"|Mutant=="MYB26"),family="poisson")
summary(res)
pval3 = coef(summary(res))[2,4]

pvec = c(pval1,pval2,pval3)
p.adjust(pvec,method="bonferroni")

p1 = ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=log2(t2+1)))+geom_boxplot(outlier.shape=NA,fill=c("white","grey","white","white"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("D") +
  xlab("") + ylab(expression(log[2]*"(Aphid number+1)")) + theme_classic() +
  geom_text(data.frame(x=1,y=6),mapping=aes(x=x,y=y),label="***",size=6) + 
  geom_text(data.frame(x=3,y=6),mapping=aes(x=x,y=y),label="**",size=6)

s1 = ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=log2(t3+1)))+geom_boxplot(outlier.shape=NA,fill=c("white","grey","white","white"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("A: 10 days") +
  xlab("") + ylab(expression(log[2]*"(Aphid number+1)")) + theme_classic() +
  geom_text(data.frame(x=1,y=7),mapping=aes(x=x,y=y),label="***",size=6) + 
  geom_text(data.frame(x=c(3,4),y=7),mapping=aes(x=x,y=y),label="**",size=6)

s2 = ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=log2(t4+1)))+geom_boxplot(outlier.shape=NA,fill=c("white","grey","white","white"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("B: 14 days") +
  xlab("") + ylab(expression(log[2]*"(Aphid number+1)")) + theme_classic() +
  geom_text(data.frame(x=c(1,3),y=8),mapping=aes(x=x,y=y),label="***",size=6) + 
  geom_text(data.frame(x=4,y=8),mapping=aes(x=x,y=y),label="*",size=6)

s = ggarrange(s1,s2,nrow=1,ncol=2)
ggsave(s,filename="aphid_last.pdf",width=8, height=3)

#########
#growth rate
aphidgr<-AphidsNo[,1:4]
aphidgr$Mutant<-factor(aphidgr$Mutant,levels=c('AT3G13882','WT','EPFL3','MYB26'))

res = glm(size~Mutant,data=subset(aphidgr,Mutant=="WT"|Mutant=="AT3G13882"))
summary(res)
pval1 = coef(summary(res))[2,4]

res = glm(size~Mutant,data=subset(aphidgr,Mutant=="WT"|Mutant=="EPFL3"))
summary(res)
pval2 = coef(summary(res))[2,4]

res = glm(size~Mutant,data=subset(aphidgr,Mutant=="WT"|Mutant=="MYB26"))
summary(res)
pval3 = coef(summary(res))[2,4]

pvec = c(pval1,pval2,pval3)
p.adjust(pvec,method="bonferroni")

ggplot(data=aphidgr,mapping=aes(x=Mutant,y=size))+geom_boxplot(outlier.shape=NA,fill=c("white","grey","white","white"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("A") +
  xlab("") + ylab("Initial diameter (cm)")+theme_classic()+
  stat_compare_means(aes(label = paste0("adj.p = ", ..p.adj..)), method = "t.test", ref.group = "WT",size=2)

ggboxplot(aphidgr, x="Mutant", y="size",xlab = "Plant genotypes",ylab = "Initial diameter(cm)")+ 
  stat_compare_means(label = "p.signif", method = "wilcox.test", ref.group = "WT")

p2 = ggplot(data=aphidgr,mapping=aes(x=Mutant,y=size))+geom_boxplot(outlier.shape=NA,fill=c("white","grey","white","white"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("B") +
  xlab("") + ylab("Initial diameter (cm)") + theme_classic() + ylim(0,NA) +
  geom_text(data.frame(x=1,y=7.5),mapping=aes(x=x,y=y),label="***",size=6) +
  geom_text(data.frame(x=3,y=7.5),mapping=aes(x=x,y=y),label="**",size=6)

########
# flowering
res = glm(flowering~Mutant,data=subset(AphidsNo,Mutant=="WT"|Mutant=="AT3G13882"))
summary(res)
pval1 = coef(summary(res))[2,4]

res = glm(flowering~Mutant,data=subset(AphidsNo,Mutant=="WT"|Mutant=="EPFL3"))
summary(res)
pval2 = coef(summary(res))[2,4]

res = glm(flowering~Mutant,data=subset(AphidsNo,Mutant=="WT"|Mutant=="MYB26"))
summary(res)
pval3 = coef(summary(res))[2,4]

pvec = c(pval1,pval2,pval3)
p.adjust(pvec,method="bonferroni")

p3 = ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=flowering+20))+geom_boxplot(outlier.shape=NA,fill=c("white","grey","white","white"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("C") +
  xlab("") + ylab("Days to flowering") + theme_classic() + ylim(0,NA) +
  geom_text(data.frame(x=c(1,4),y=c(45,45)),mapping=aes(x=x,y=y),label="***",size=6) +
  geom_text(data.frame(x=3,y=45),mapping=aes(x=x,y=y),label="**",size=6)

pic = ggdraw() +  draw_image("./figures/mutantPhoto.png") + draw_label(label="A",x = 0.075, y = 0.975, hjust = 1, vjust = 1)

p = ggarrange(pic,p2,p3,p1,nrow=2,ncol=2)
ggsave(p,filename="./figures/mutant.pdf",width=8, height=6)
ggsave(p,filename="./figures/mutant.png",width=8, height=6, dpi=600)
