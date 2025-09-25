setwd('C:\\Users\\vinod\\Desktop\\LABS\\PS\\Lab 8\\IT24104383')
getwd()

#Q1)
#Load the data set
data<-read.table('Exercise - LaptopsWeights.txt', header=TRUE)
fix(data)

# Check the column name
names(data)

#Rename the column name to avoid parentheses
names(data) <- "Weight"
attach(data)

#Mean & the variance of the population
popmn<-mean(Weight)
popsd<-var(Weight)


#Q2)
samples<- c()
n<-c()
for (i in 1:25){
  s<-sample(Weight, 6, replace = TRUE)
  samples<-cbind(samples, s)
  n<-c(n,paste('s',i))
}

s.mean<-apply(samples,2,mean)
s.sd<-apply(samples,2,sd)


#Q3)
#mean and standard deviation of the 25 sample means
samplemean<-mean(s.mean)
samplesd<-sd(s.sd)

#population mean & sample mean
popmn
samplemean

#population sd & sample sd
popsd
samplesd

# Theoretical standard error (what we expect)
theoretical_se <- popsd / sqrt(6)

cat("Theoretical Standard Error (pop_sd / sqrt(6)):", theoretical_se, "\n\n")

# Compare and state relationships
cat("Relationship 1: Mean of Sample Means vs Population Mean\n")
cat("  Mean of Sample Means =", samplemean, "\n")
cat("  Population Mean =", popmn, "\n")
cat("  They are approximately equal (unbiased estimator)\n\n")

cat("Relationship 2: SD of Sample Means vs Population SD\n")
cat("  SD of Sample Means =", samplesd, "\n")
cat("  Theoretical Standard Error =", popsd, "\n")
cat("  They are approximately equal (Central Limit Theorem)\n")
