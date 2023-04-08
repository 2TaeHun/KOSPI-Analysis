eco<-read.csv("C:/data/econo.csv",fileEncoding = "euc-kr")
eco
str(eco)
dim(eco)
attach(eco)
eco1<-eco[2:120,c(1,4,7,10,13,16,19,22,25,28,31,34,37)]
str(eco1)
dim(eco1)
names(eco1)
eco_cor<-eco1[,-c(1,2)]
eco_cor
names(eco_cor)
cor<-cor(eco_cor)
heatmap(cor)
cor^2
vif_eco<-1/(1-cor^2) # 독립변수간의 VIF (기준 10이상을 다중공산성을 띄는 독립변수상태)
boxplot(vif_eco) # 독립변수간의 다중공산성은 뛰지 않음(이상치(outlier)는 10이하 무시)
pairs(eco_cor)
library(psych)
pairs.panels(cor,smooth = T,scale = T,method = 'pearson')
cor.plot(cor(eco_cor))
cor.plot(cor(eco_cor),numbers = F)
library(corrplot)
corrplot(cor(eco_cor))
corrplot(cor(eco_cor),method = 'ellipse',type='lower')
corrplot(cor(eco_cor),method = 'ellipse',type='upper')
corrplot.mixed(cor(eco_cor),lower = 'number',upper = "ellipse")













