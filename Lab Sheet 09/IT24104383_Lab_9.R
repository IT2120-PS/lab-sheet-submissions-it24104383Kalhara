setwd('C:\\Users\\vinod\\Desktop\\LABS\\PS\\Lab 9')
getwd()

#Exercise

#Q1)
#i.
baking_times<-rnorm(25, mean = 45, sd=2)
print(baking_times)

#ii.
test_result <- t.test(baking_times, mu=46, alternative = "less")
print(test_result)
