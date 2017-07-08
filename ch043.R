# Chapter 4.3 Data Types

# Numeric Data Type - float and double literal
x <- 3
x
y <- 3.0
y
class(x)
is.numeric(x)

# Integer Data Type - integeral lteral
x <- 4L
x
class(x)
is.integer(x)
is.numeric(x)

# Implicit Type Conversion from integer to numeric
class(4)
class(4L)
class(2.8)
4L * 2.8
class(4L * 2.8)
5L/2L
class(5L/2L)

# Character/String Data Type - string literal
firstName <- "Sam"
firstName

# The length of a character
nchar(firstName)
nchar("Sam Chung")
nchar(2015)

# Character/String Data Type - factor()
lastName <- factor("Chung")
lastName
nchar(lastName)

# Date Data Type - Date()
myBirthDate1 <- as.Date("1960-12-20")
myBirthDate1
class(myBirthDate1)
as.numeric(myBirthDate1)

myBirthDate2 <- as.Date("12-20-1960")
myBirthDate2
class(myBirthDate2)
as.numeric(myBirthDate2)

myBirthDate3 <- as.Date("20-12-1960")
myBirthDate3
class(myBirthDate3)
as.numeric(myBirthDate3)

# Date Time Data Type - POSIXct() - Portable Operating System Interface Conformance Test
appointment1 <- as.POSIXct("2015-07-03 12:30")
appointment1
class(appointment1)
as.numeric(appointment1)

# Logical Data Type
TRUE
TRUE * 5
class(TRUE)

FALSE
FALSE * 5
class(FALSE)

k <- TRUE
k
class(k)
is.logical(k)

2 == 3
2 != 3
2 < 3
2 <= 3
2 > 3
2 >= 3
"data" == "stats"
"data" < "stats"
