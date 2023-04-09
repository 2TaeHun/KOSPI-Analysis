eco<-read.csv("C:/data/econo.csv",fileEncoding = "euc-kr") #윈도우 파일을 맥에서 가져오기위해 인코딩
eco1<-eco[2:120,c(1,4,7,10,13,16,19,22,25,28,31,34,37)] # 데이터 정제
str(eco1)
dim(eco1)
names(eco1)

##PCA
eco_pca<-prcomp(eco1[2:13],center = T,scale. = T)
eco_pca
summary(eco_pca)
eco_pca$rotation
plot(eco_pca)
plot(eco_pca, type='l')
plot(eco_pca, type='l', main = "Scree Plot") #Elboow Point PC1/ PC2
head(eco_pca$x[,1:2],10)
install.packages('ggfortify')
library(ggfortify)
autoplot(eco_pca,data = eco1)
