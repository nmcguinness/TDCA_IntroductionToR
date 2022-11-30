# Getting Started - data types, control flow, functions

# Data Types #################################################################

# R language has built-in data types: integer, numeric, character, logical, complex

# integer (whole numbers)
year <- 2022
year

# numeric (floating-point numbers)
heightInM <- 1.9
heightInM

# logical (T, F, FALSE, TRUE)
beenToUS <- FALSE

#character (e.g. strings)
name <- "Niall"
surname <- 'McGuinness'

# complex
x <- 3i + 5

# use paste() to form a string from strings and variables
strOut <- paste("My name is", name, "and I am", heightInM, "in metres tall!")

# use print to output a variable (e.g. a integer, numeric, string)
print(strOut)

# Control Flow ##############################################################

today <- "Wednesday"

if(today == "Wednesday"){
  print("Still 2 days to go!")
} else if (today == "Friday"){
  print("Ie's the weekend!")
}else{
  print("Not midweek or the weekend!")
}
  
a <- 10
b <- 25

# writing an if statement with two boolean expressions combined using a logical operator (i.e. &&)
if(a >= 0 && a <= 100){
  print(b*2)
}

# In-Built Functions #########################################################

# sqrt, abs, log10, log2, exp, pi
var1 <- sqrt(64)
var1

z <- -999
var2 <- abs(z)
var2

var3 <- log10(1000) #10x10x10
var3

var4 <- log2(64) #2x2x2x2x2x2
var4

# using built-in constant (e.g. pi)
radius <- 10
area <- pi * pi * radius * radius
area

# User-defined Functions #####################################################

#general form of a function is
# functionName <- function(param1, param2,...){
# function body
# }

# creating a user-defined function
absDiff <- function(a, b){
  abs(a - b)
}

# calling/invoking a user-defined function
result <- absDiff(5, 10)
result

result <- absDiff(10, 5)
result


doSomething <- function(a, b, c) {
  z <- (a + b)/c
}

result <- doSomething(1, 2, 3)
result


# use the parameter names to explicitly declare the value of a variable
result <- absDiff(a = 5, b = 100)
result

result <- absDiff(b = 100, a = 5)
result


# Data Structure - Vector ####################################################

# vector is used to hold data of the same type
nutritionalBreakdown <- c(60, 25, 15)

rainfallPerDay <- c(34.5, 45.2, 23.6, 56.0, 67.9, 12.2, 35.1)

names <- c("ana", "bob", "ciara")

bankHolidaysInQuarter <- c(TRUE, TRUE, FALSE, TRUE)

aName <- names[1]
aName

names[3] <- "chiara"
names

for(x in names)
  print(x)

for(rainMM in rainfallPerDay)
  print(rainMM)







