library("pracma")

#1)i)
jp <- function(x,y){
  2*(2*x + 3*y)/5
}
  I <- integral2(jp,xmin = 0,xmax = 1,ymin = 0,ymax = 1)
print(I$Q)

#1)ii)
mpy <- function(y) {
  jp(1,y)
}
I1 <- integral(mpy,0,1)
print(I1)

#1)iii)
mpx <- function(x) {
  jp(x,0)
}
I2 <- integral(mpx,0,1)
print(I2)

#1)iv)
evxy <- function(x,y){
  jp(x,y)*x*y
}
I3 <- integral2(evxy , 0 , 1 , 0 , 1)
print(I3$Q)

#2)A)
jpmf <- function(x1,y1) (x1+y1)/30

x1 <- c(0:3)
y1 <- c(0:2)

M <- matrix(c(jpmf(0,0:2),jpmf(1,0:2),jpmf(2,0:2),jpmf(3,0:2)),nrow = 4,ncol = 3,byrow=TRUE )
print(M)

#2)B)
print(sum(M))

#2)C)
M_x <- apply(M,1,sum) # row wise sum print
print(M_x)

#2)D)
M_y <- apply(M,2,sum) # column wise sum print
print(M_y)

#2)E)
c_p <- M[1,2]/M_x[2] # conditional probability
print(c_p)

#Q2 F 
ex <- sum(x1*M_x)
print(ex)

ey <- sum(y1*M_y)
print(ey)

ex2 <- sum(x1*x1*M_x)
varx <- ex2 - ex*ex
print(varx)

ey2 <- sum(y1*y1*M_y)
vary <- ey2 - ey*ey
print(vary)

jpmf1 <- function(x1,y1) jpmf(x1,y1)*x1*y1
M1 <- matrix(c(jpmf1(0,0:2),jpmf1(1,0:2),jpmf1(2,0:2),jpmf1(3,0:2)),nrow = 4,ncol = 3,byrow=TRUE )
exy <- sum(M1)
print(exy)

cov <- exy - ex*ey
print(cov)

cr <- cov/sqrt(varx*vary)
print(cr)



