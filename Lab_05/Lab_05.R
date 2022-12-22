#Ques_1(a)
x<-punif(45, min=0, max=60,lower.tail = FALSE)
x

#Ques_1(b)
y<-punif(30, min=0, max=60,lower.tail = TRUE)-punif(20, min=0, max=60,lower.tail = TRUE)
y

#Ques_2(a)
result1 <- dexp(3,rate=1/2)
result1

#Ques_2(b)
x<-seq(0,5)
y <- dexp(x,rate=1/2)
plot(x,y,type="l")

#Ques_2(c)
result2 <- pexp(3,rate=1/2)
result2

#Ques_2(d)
z <- pexp(x,rate=1/2)
plot(x,z,type="l")

#Ques_2(e)
x_sim <- rexp(1000,rate=1/2)

#Ques_3(a(i))
q<-dgamma(3,2,scale=1/3)
q

#Ques_3(a(ii))
p<-pgamma(1,2,scale=1/3, lower.tail=FALSE)
p

#Ques_3(b)
c<-qgamma(0.7,2,1/3)
c
