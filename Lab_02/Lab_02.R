gold <- 1:20
silver <- 1:30
bronze <- 1:50
#gold <- c(gold, rep(NA, 50 - 20))
#silver <- c(silver, rep(NA, 50 - 30))
#chest <- data.frame(gold,silver,bronze)
##chest = data.frame(gold,silver,bronze)
##merge(gold,silver,bronze,all=T)
#print(sample(chest,1,replace=TRUE))
#Q1
chest <- c(gold,silver,bronze)
print(sample(chest,10,replace = TRUE),prob = c(0.2,0.3,0.5))

sample(x=c("Success","Failure"),prob=c(.9,.1),size=10,replace=TRUE)

#(2) A room has n people, and each has an equal chance of being born on any of the 365
#days of the year. (For simplicity, we'll ignore leap years). What is the probability
#that two people in the room have the same birthday?

#(a) Use an R simulation to estimate this for various n.
n = 1:50
p = numeric(50)
for (i in n)
{
  q = prod(1-(0:(i-1))/365)
  p[i] = 1-q
}
print(p)

#(b) Find the smallest value of n for which the probability of a match is greater than 5.
a = 1:50
b = numeric(50)
for (j in a)
{
  c = prod(1-(0:(j-1))/365)
  if(c<0.5)
  {
    print(j)
    break
  }
}

#Q3
cloudy_rain <- 0.85
cloudy <- 0.4
rainy <- 0.2

rain_cloudy = (cloudy_rain * rainy)/cloudy
print(rain_cloudy)

#Q4
library(datasets)
data(iris)

#(a) Print first few rows of this dataset
print(head(iris,4))

#(b) Find the structure of this dataset.
str(data)

#(c) Find the range of the data regarding the sepal length of flowers.
sl <- iris$Sepal.Length
sw <- iris$Sepal.Width
range(sl)

print("Sepal Length")
#print(sl)
print("Sepal Width")
#print(sw)

#(d) Find the mean of the sepal length.
print(paste("Mean of Sepal Length",mean(sl)))

#(e) Find the median of the sepal length.
print(paste("Median of Sepal Length",median(sl)))

#(f) Find the first and the third quartiles and hence the interquartile range.
print(paste("First quartile is:",quantile(sl, 0.25))) #first quartile
print(paste("Third quartile is:",quantile(sl, 0.75))) # third quartile
#print(quantile(iris$Sepal.Length, 0.75) - quantile(iris$Sepal.Length, 0.25))
print(paste("Interquartile range is: ",IQR(sl)))

#(g) Find the standard deviation and variance.
print(paste("Standard Deviation is:",sd(sl)))
print(paste("Variance is:",var(sl)))

#(h) Try doing the above exercises for sepal.width, petal.length and petal.width.
#For sepal.width
print(paste("Mean of Sepal Width",mean(sw)))
print(paste("Median of Sepal Width",median(sw)))
print(paste("First quartile is:",quantile(sw, 0.25))) #first quartile
print(paste("Third quartile is:",quantile(sw, 0.75))) # third quartile
print(paste("Interquartile range is: ",IQR(sw)))
print(paste("Standard Deviation is:",sd(sw)))
print(paste("Variance is:",var(sw)))

#For petal.length
pl <- iris$Petal.Length
#print(pl)
print(paste("Mean of Petal Length",mean(pl)))
print(paste("Median of Petal Length",median(pl)))
print(paste("First quartile is:",quantile(pl, 0.25))) #first quartile
print(paste("Third quartile is:",quantile(pl, 0.75))) # third quartile
print(paste("Interquartile range is: ",IQR(pl)))
print(paste("Standard Deviation is:",sd(pl)))
print(paste("Variance is:",var(pl)))

# For petal.width
pw <- iris$Petal.Width
print(paste("Mean of Petal Width",mean(pw)))
print(paste("Median of Petal Width",median(pw)))
print(paste("First quartile is:",quantile(pw, 0.25))) #first quartile
print(paste("Third quartile is:",quantile(pw, 0.75))) # third quartile
print(paste("Interquartile range is: ",IQR(pw)))
print(paste("Standard Deviation is:",sd(pw)))
print(paste("Variance is:",var(pw)))

#(i) Use the built-in function summary on the dataset Iris.
print(summary(iris))

#(5) R does not have a standard in-built function to calculate mode. So we create a user
#function to calculate mode of a data set in R. This function takes the vector as input
#and gives the mode value as output.

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)

# Calculate the mode using the user function.
result <- getmode(v)
print(paste("Mode of the data is:",result))

# Create the vector with characters.
charv <- c("o","it","the","it","it")

# Calculate the mode using the user function.
result <- getmode(charv)
print(paste("Mode of the data is:",result))
