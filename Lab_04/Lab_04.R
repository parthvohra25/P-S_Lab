#Q1
x <- c(0,1,2,3,4)
y <- c(0.41,0.37,0.16,0.05,0.01)

print(sum(x*y))
print(weighted.mean(x,y))
print(c(x%*%y))

#Q2
f <- function(x) 
{0.1*x*exp(-0.1*x)}

Exp <- integrate(f,0,Inf)
print(Exp$value)

#Q3
x <- c(0,1,2,3)
f <- c(0.1,0.2,0.2,0.5)
ans = sum(x*f)
print(10*ans-12)
#print((12*ans)+(2*(3-ans))-(6*3))

#Q4
first_moment <- function(x) 
{0.5*x*exp(-abs(x))}

f.mean <- integrate(first_moment,1,10)
print(paste("Mean is:",f.mean$value))

second_moment <- function(x) 
{0.5*x*x*exp(-abs(x))}

s <- integrate(second_moment,1,10)
f.variance <- (s$value) - (f.mean$value)^2
print(paste("Variance is:",f.variance))

fifth_moment <- function(x) 
{0.5*(x^5)*exp(-abs(x))}

f <- integrate(fifth_moment,1,10)
f.v <- (f$value) - (f.mean$value)^5
print(paste("Value is:",f.v))

#Q5
f <- function(y) 
{(3/4)*(1/4)^(sqrt(y)-1)}

x <- 3
y <- x^2

print(f(y))

f <- function(y) 
{(3/4)*(1/4)^(sqrt(y)-1)}

x <- c(1,2,3,4,5)
y <- x^2
Exp <- sum(y*f(y))
print(Exp)

Exp2 <- sum(y*y*f(y))
Var <- Exp -(Exp2)^2
print(Var)
