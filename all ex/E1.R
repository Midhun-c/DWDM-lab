"Hello World!"
5 + 5
print("Hello World!")
# This is a comment by midhun
plot(1:10)
for (x in 1:10)
{
  print(x)
}
age <- 40
text <- "KRCE"
paste("R is", text) # Concatenate Elements

var1 <- var2 <- var3 <- "KRGi
# numeric
x <- 10.5
class(x)
max(5, 10, 15)
min(5, 10, 15)
sqrt(16)
abs(-4.7)
ceiling(1.4)
floor(1.4)
str <- "Hello World!"
nchar(str)
grepl("Hello", str)
grepl("X", str)

a<- 200
b <- 33
x <- 5
y <- 16
x + y
x - y
x * y
y / x
y %/% x
y %% x
y ^ x

x <- c(2, 8, 3)
y <- c(6, 4, 1)
x + y
x > y

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}
[1] "a is greater than b"
#loop
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}

for (i in 1:10)
{
  print(i)
}

dice <- c(1, 2, 3, 4, 5, 6)

for (x in dice) {
  print(x)
}
[1] 1

#function

my_function <- function() {
  print("Hello World!  **  KRCE   **  ")
}

my_function() # call the function named my_function

fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)  # Sort a string
sort(numbers)
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
plot(1:10, type="l")

x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y ,col="blue", cex=2)

x <- c(10,20,30,40)

# Display the pie chart
pie(x)
