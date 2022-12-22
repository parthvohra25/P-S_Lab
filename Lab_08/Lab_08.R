data<-read.csv(file.choose())
data

head(data,10)
dim(data)

m=mean(data$Wall.Thickness)
abline(v=m,col="red")
hist(data$Wall.Thickness, prob = TRUE)

s10<-c()
for (i in 1:900) {
  s10[i]=mean(sample(data$Wall.Thickness,10,replace="TRUE"))
  
}
hist(s10,prob=TRUE)
abline(v=mean(s10),col="green")
abline(v=mean(data$Wall.Thickness))

#Q1
#(a) Import the csv data file in R.
dats<-read.csv(file.choose())
head(dats)

#(b) 
nrow(dats)
head(dats,10)

#(c)
d<-mean(dats$Wall.Thickness)
hist(dats$Wall.Thickness,col="cyan")

#(d) 
abline(v=d,col="red",lty=1)

#Q2
#(a) 
rv <- vector(length=9000)
n=9000
for(i in 1:n){
  rv[i]<-mean(sample(dats$Wall.Thickness,10,replace=TRUE))
}
hist(rv,col="black",main="Mean of samples")
abline(v=mean(rv),col="white")

#(b)

s30<-c()
s50<-c()
s500<-c()
n=9000

for(i in 1:n){
  s30[i]<-mean(sample(dats$Wall.Thickness,30,replace=TRUE))
  s50[i]<-mean(sample(dats$Wall.Thickness,50,replace=TRUE))
  s500[i]<-mean(sample(dats$Wall.Thickness,500,replace=TRUE))
}
par(mfrow=c(2,2))
hist(s30,col="lightblue",main="sample s30",xlab="Wall thickness")

abline(v=mean(s30),lty=1)
hist(s50,col="lightgreen",main="sample s50",xlab="Wall thickness")
abline(v=mean(s50),lty=1)
hist(s500,col="lightyellow",main="sample s5000",xlab="Wall thickness")
abline(v=mean(s500),lty=1)

