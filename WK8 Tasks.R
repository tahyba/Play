#TASK1
A <-c(1,2,3,4,5)
B <-c(6,7,8,9,10)
C <-c(11,12,13,14,15)
combineVect <- cbind(A,B,C) 
combineVect
plot(combineVect, type ="p", col="red", pch=8, xlab="",ylab="")


#TASK2
DataF <- data.frame(Name=c("Aminah", "Lauren", "Mehra","Olivia", "Romana"),
                Age=c(27,27,29,25,21),
                Role=c("SocialPrescriber", "Writer", "CallAdvisor", "TourGuide", "SalesAssistant"),
                Lenghthofservice=c(1,1,5,1,2))
print(DataF)

#TASK3

library(ggplot2)
x <- 1:20
y <- x^2
qplot(x,y)

#TASK5

name<-readline("Enter the name:")
age<-readline("Enter the age: ")
hello<-paste("I am", name, "and my age is", age)
print(hello)


