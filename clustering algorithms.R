
############distance functions###########
set.seed(123)
ss<-sample(1:50,15)
df<-USArrests[ss,]
df.scaled<-scale(df)
##############dist()###############
dist.eucl<-dist(df.scaled,method="euclidean")
#Reformat as a matrix
#Subset the first 3 columns and rows and Round the values
round(as.matrix(dist.eucl)[1:3,1:3],1)
#In this matrix, the value represent the distance between objects.
##############get_dist()###############
library("factoextra")
dist.cor<-get_dist(df.scaled,method = "pearson")
#get_dist() can be used to compute correlation-based distances
#display a subset
round(as.matrix(dist.cor)[1:3,1:3],1)
##############daisy()###############
library(cluster)
data(flower)
head(flower,3)
#data structure
str(flower)
#distance matrix
dd<-daisy(flower)
round(as.matrix(dd)[1:3,1:3],2)


###################Partitioning Clustering###########

######K-means###
data("USArrests")#loading the data set
df<-scale(USArrests)
head(df,3)
