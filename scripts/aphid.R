library(dplyr)
library(tidyverse)
library(ggplot2)
library(ggpubr)
library(cowplot)
AphidsNo <- read.delim("./data/AphidsNo.txt")
AphidsNo$Mutant <-factor(AphidsNo$Mutant,levels=c('AT3G13882','WT'))

library(lme4)
# add offset=log(size) or offset=log(flowering) to glmer when introducing an offset term
res = glmer(t2~Mutant+(1|No.),data=AphidsNo,family="poisson",control=glmerControl(optimizer="bobyqa"))
summary(res)
anova(res)
1-pf(anova(res)[1,4],1,9)

res = glmer(t3~Mutant+(1|No.),data=AphidsNo,family="poisson",control=glmerControl(optimizer="bobyqa"))
summary(res)
anova(res)
1-pf(anova(res)[1,4],1,9)

res = glmer(t4~Mutant+(1|No.),data=AphidsNo,family="poisson",control=glmerControl(optimizer="bobyqa"))
summary(res)
anova(res)
1-pf(anova(res)[1,4],1,9)

p1 = ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=log2(t2+1)))+geom_boxplot(outlier.shape=NA,fill=c("white","grey"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("(d)") +
  xlab("") + ylab("Aphid abundance") + theme_classic() +
  geom_text(data.frame(x=1.5,y=6),mapping=aes(x=x,y=y),label="**",size=6)

s1 = ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=log2(t3+1)))+geom_boxplot(outlier.shape=NA,fill=c("white","grey"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("(a) 10 days") +
  xlab("") + ylab("Aphid abundance") + theme_classic()

s2 = ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=log2(t4+1)))+geom_boxplot(outlier.shape=NA,fill=c("white","grey"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("(b) 14 days") +
  xlab("") + ylab("Aphid abundance") + theme_classic() 

s = ggarrange(s1,s2,nrow=1,ncol=2)
ggsave(s,filename="./figures/aphid_last.pdf",width=6, height=3)

#########
#growth rate
aphidgr<-AphidsNo[,1:5]
aphidgr$Mutant<-factor(aphidgr$Mutant,levels=c('AT3G13882','WT'))

res = lmer(size~Mutant+(1|No.),data=aphidgr)
summary(res)
anova(res)
1-pf(anova(res)[1,4],1,9)

p2 = ggplot(data=aphidgr,mapping=aes(x=Mutant,y=size))+geom_boxplot(outlier.shape=NA,fill=c("white","grey"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("(b)") +
  xlab("") + ylab("Plant size (cm)") + theme_classic() + ylim(0,NA) +
  geom_text(data.frame(x=1.5,y=7.5),mapping=aes(x=x,y=y),label="***",size=6)

########
# flowering
res =lmer(flowering~Mutant+(1|No.),data=aphidgr)
summary(res)
anova(res)
1-pf(anova(res)[1,4],1,9)

p3 = ggplot(data=AphidsNo,mapping=aes(x=Mutant,y=flowering+20))+geom_boxplot(outlier.shape=NA,fill=c("white","grey"))+geom_jitter(alpha=0.25,height=0.1,width=0.1)+
  ggtitle("(c)") +
  xlab("") + ylab("Flowering time") + theme_classic() + ylim(0,NA) +
  geom_text(data.frame(x=1.5,y=45),mapping=aes(x=x,y=y),label="****",size=6)

# load picture
pic = ggdraw() +  draw_image("./figures/mutantPhoto.png") + draw_label(label="(a)",x = 0.15, y = 0.975, hjust = 1, vjust = 1)

p = ggarrange(pic,p2,p3,p1,nrow=1,ncol=4)
ggsave(p,filename="./figures/mutant.jpg",width=8, height=3, dpi=600)
