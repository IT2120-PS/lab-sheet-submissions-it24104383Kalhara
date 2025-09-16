setwd('C:\\Users\\vinod\\Desktop\\LABS\\PS\\Lab 07\\IT24104383')
getwd()

#1.
#Uniform Distribution
#X - the number of minutes the train arrives
#min = 0 , max = 40
#p(10<x<25) = p(x<=25) - p(x<=10)
punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)


#2.
#X has a Exponential Distribution
#rate = 0.33
#p(x<=2)
pexp(2, rate = 0.33, lower.tail = TRUE)



#3.
#Normal Distribution
#mean = 100 , sd = 15

#i.
#p(x>130)
pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)

#ii.
#b = 0.95
#p(x<b)
qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)


