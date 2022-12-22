#Q1
x <- c(5,10,15,20,25,30)
max_min <- range(x)
print("Minimum and Maximum of given list is:")
print(max_min)

#Q2
var = as.integer(readline(prompt = "Enter a number:"));

if(var < 0){
  print("Sorry Factorial doesn't exist for negative numbers")
} else if(var == 0){
  print("The factorial of 0 is 1")
} else{
  factorial = 1
  for (i in 1:var) {
    factorial = factorial*i
  }
  print(paste("The Factorial of number",var,"is:",factorial))
}

#Q3
n = as.integer(readline(prompt = "Enter a number:"));
n1 = 0
n2 = 1
count = 2

if(n <= 0) {
  print("Plese enter a positive integer")
} else {
  if(n == 1) {
    print("Fibonacci sequence:")
    print(n1)
  } else {
    print("Fibonacci sequence:")
    print(n1)
    print(n2)
    while(count < n) {
      nth = n1 + n2
      print(nth)
      # update values
      n1 = n2
      n2 = nth
      count = count + 1
    }
  }
}

#Q4
d = as.integer(readline(prompt = "Enter 1st number:"));
e = as.integer(readline(prompt = "Enter 2nd number:"));
sum = d+e
sub = d-e
mul = d*e
div = d/e
print(paste("Addition of two elements:",sum));
print(paste("Subtraction of two elements:",sub));
print(paste("Multiplication of two elements:",mul));
print(paste("Divison of two elements:",div))

#Q5
x <- c(1, 2, 3, 4, 5)
y <- c(1, 8, 27, 64, 125)
plot(x, y, type = "l")

a <- c(15, 11, 23, 31,20)
labels <- c("Yamuna Nagar", "Jhajjar", "Karnal", "Hisar","Manesar")
pie(a, labels, main = "Haryana City Pie Chart", col = rainbow(length(a)))


barplot(a,names.arg=labels,xlab="Cities",ylab="Revenue",main="Revenue chart")
