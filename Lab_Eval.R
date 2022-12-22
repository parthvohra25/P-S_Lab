#Q1
x <- c(1,2,3,4)
f <- c(2.5,2.5,2.5,2.5)
n <- 100
p <- 1/200

#Q1)a)
a <- dbinom(0,n,p,log = FALSE)
print(paste("No defective = ",a))

#Q1)b)
b <- pbinom(2,n,p,lower.tail = FALSE)
print(paste("2 or more defective = ",b))

#Q2
library(datasets)
data("ToothGrowth")

#Q2)a)
print(head(ToothGrowth,10))

#Q2)b)
attach(ToothGrowth)
print(range(len))

#Q2)c)
m <- mean(len)
print(paste("Mean is:",m))
detach(ToothGrowth)

hist(ToothGrowth$len,main = "Histogram Plot of Dataset Toothgrowth",xlab = "X",ylab = "Y",col = "yellow",prob = TRUE)

#Q2)d)
abline(v=m,col="red")

#Q3
library(pracma)
f <- function(x,y){
  (x+3*y)/115
}

#Q3)a)
fxy <- integral2(f,0,1,0,1)
print(fxy$Q)

#Q3)b)
f1 <- function(y){
  f(1,y)
}

fy <- integral(f1,0,1)
print(fy)

#Q3)c)
f2 <- function(x){
  f(x,1)
}

fx <- integral(f2,0,1)
print(fx)

#Q3)d)
f3 <- function(x,y){
  x*y*y*f(x,y)
}

exy2 <- integral2(f3,0,1,0,1)
print(exy2$Q)

#Q4
vec <- seq(-7,7,length=100)
df <- c(1,7,10,15)
color <- c("blue","green","red","yellow")

for(i in df)
{
  print(dt(x,i))
}

plot(vec,dt(vec,df[3]),type="l",xlab="t-value",ylab="Density",main="Comparison of t-distribution",col=color[3])

for(i in 1:4)
{
  lines(vec,dt(vec,df[i]),type="l",col=color[i])
}



