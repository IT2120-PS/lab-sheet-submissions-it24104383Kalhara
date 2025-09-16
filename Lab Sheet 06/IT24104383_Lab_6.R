setwd('C:\\Users\\vinod\\Desktop\\LABS\\PS\\Lab 06\\IT24104383')
getwd()


# Q1
#part 1

#Binomial Distribution
# X - the number of students who passed the test out of 50 students.
#n=50 , p =0.85


#part 2
#p(x>=47) = p(x>46)
pbinom(46, 50, 0.85, lower.tail = FALSE)
#p(x>=47) = 1 - p(x<47) = 1 - p(x<=46)
1 - pbinom(46, 50, 0.85, lower.tail = TRUE)




# Q2
#part 1
# X -number of calls a call center receives with in a hour

#part 2
#Poisson Distribution
#lambda=12

#part 3
#p(x=15)
dpois(15, 12)

