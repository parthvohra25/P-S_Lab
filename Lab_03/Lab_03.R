#Q1
a=dbinom(7,size=12,prob=1/6)
b=dbinom(8,size=12,prob=1/6)
c=dbinom(9,size=12,prob=1/6)

result=a+b+c
print(result)

#Q2
result3=pnorm(84,mean = 72,sd=15.2,lower.tail=FALSE)
print(result3)

#Q3
dpois(0,5)
prob = dpois(48,50)+dpois(49,50)+dpois(50,50)
prob


#Q4
dhyper(3,m=17,n=233,k=5)

#Q5
prob = dbinom(1:31,31,447/1000)
e<-data.frame(x=1:31,prob)
e
