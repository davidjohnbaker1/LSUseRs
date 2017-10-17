## Introduction to R 

2 + 4
10/6
sqrt(10)
2^(1/2)

10 < 2
#======================================================================================================
foo <- 2 * 3
foo
foo * 2
foo + 3
foo / 7 
foo < 10
foo == foo

yearsInGradSchool <- c(2,1,4,5,6,7,3,2,4,5,3)
classesTaken <- c(5,2,5,7,9,9,2,8,4,7,2)
cor(yearsInGradSchool,classesTaken,method = "kendall")

plot(yearsInGradSchool,classesTaken,
     main = "My Plot",
     xlab = "Years in Grad School", 
     ylab = "Classes Taken")

str(iris)
class(iris)
summary(iris)

class(yearsInGradSchool)


# 