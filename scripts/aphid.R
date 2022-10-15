library(dplyr)
library(tidyverse)
library(ggplot2)
library(ggpubr)
library(cowplot)
AphidsNo <- read.delim("./data/AphidsNo.txt")
AphidsNo$Mutant <-factor(AphidsNo$Mutant,levels=c('AT3G13882','WT'))

res = glm(t2~Mutant,data=AphidsNo,family="poisson")
summary(res)
pval1 = coef(summary(res))[2,4]

res = glm(t3~Mutant,data=AphidsNo,family="poisson")
summary(res)
pval1 = coef(summary(res))[2,4]

res = glm(t4~Mutant,data=AphidsNo,family="poisson")
summary(res)
pval1 = coef(summary(res))[2,4]

p1 = ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=log2(t2+1)))+geom_boxplot(outlier.shape=NA,fill=c("white","grey"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("D") +
  xlab("") + ylab("Aphid abundance") + theme_classic() +
  geom_text(data.frame(x=1.5,y=6),mapping=aes(x=x,y=y),label="***",size=6)

s1 = ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=log2(t3+1)))+geom_boxplot(outlier.shape=NA,fill=c("white","grey"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("A: 10 days") +
  xlab("") + ylab("Aphid abundance") + theme_classic() +
  geom_text(data.frame(x=1.5,y=7),mapping=aes(x=x,y=y),label="***",size=6)

s2 = ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=log2(t4+1)))+geom_boxplot(outlier.shape=NA,fill=c("white","grey"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("B: 14 days") +
  xlab("") + ylab("Aphid abundance") + theme_classic() +
  geom_text(data.frame(x=1.3,y=8),mapping=aes(x=x,y=y),label="***",size=6)

s = ggarrange(s1,s2,nrow=1,ncol=2)
ggsave(s,filename="./figures/aphid_last.pdf",width=6, height=3)

#########
#growth rate
aphidgr<-AphidsNo[,1:4]
aphidgr$Mutant<-factor(aphidgr$Mutant,levels=c('AT3G13882','WT'))

res = glm(size~Mutant,data=aphidgr)
summary(res)
pval1 = coef(summary(res))[2,4]

p2 = ggplot(data=aphidgr,mapping=aes(x=Mutant,y=size))+geom_boxplot(outlier.shape=NA,fill=c("white","grey"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("B") +
  xlab("") + ylab("Plant size (cm)") + theme_classic() + ylim(0,NA) +
  geom_text(data.frame(x=1.5,y=7.5),mapping=aes(x=x,y=y),label="***",size=6)

########
# flowering
res = glm(flowering~Mutant,data=aphidgr)
summary(res)
pval1 = coef(summary(res))[2,4]

p3 = ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=flowering+20))+geom_boxplot(outlier.shape=NA,fill=c("white","grey"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("C") +
  xlab("") + ylab("Flowering time") + theme_classic() + ylim(0,NA) +
  geom_text(data.frame(x=1.5,y=45),mapping=aes(x=x,y=y),label="***",size=6)

pic = ggdraw() +  draw_image("./figures/mutantPhoto.png") + draw_label(label="A",x = 0.075, y = 0.975, hjust = 1, vjust = 1)

p = ggarrange(pic,p2,p3,p1,nrow=1,ncol=4)
ggsave(p,filename="./figures/mutant.pdf",width=8, height=3)
ggsave(p,filename="./figures/mutant.png",width=8, height=3, dpi=600)
