# Chapter 4.4 Vector Data Type
x <- c(1, 2, 3, 4, 5,6 ,7, 8, 9, 10)
x
y <- 1:10
y
z <- c(1:10)
z

1:10
10:1
-2:3
5: -7

# Vector arithmetic operators
x*5
x+2
x - 3
x/4
x^2

# Functions for Vector
sqrt(x)
mean(x)
length(x)
nchar(x)
nchar(y)

# Inquiring Functions
?mean
?length
?'+'
?'=='
?'++'
?'^'
apropos("mea")
?kmeans

# Accessing a vector
x[1]
x[1:2]
x[1, 2]
x[4]
x[4:6]
x[4,6]
x[c(4, 6)]
x[c(4, 60)]

# Naming elements of a vector
c(One = "a", Two = "y", Last = "r")

w <- 1:3
names(w) <- c("a", "b", "c")
w

# Two Vector arithmetic with the same length
x <- 1:10
y <- -5:4
x
y
length(x)
length(y)
length(x + y)

x + y
x - y
x * y
x/y
x^y

x
y
x <= 5
x > y
x < y

x
y
any(x < y)
all(x > y)

# Two Vector arithmetic with the different length
x + c(1, 2)
x + c(1, 2, 3)

# Factor Vectors
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacrosse", "Basketball", "Tennis", "Cricket", "Soccer")
q
nchar(q)

q2 <- c(q, "Hockey", "Lacrosse", "Hockey", "Water Polo", "Hockey", "Lacrosse")
q2
q2Factor <- as.factor(q2)
q2Factor
as.numeric(q2Factor)

degree <- c("Masters", "Doctorate", "High School", "College")
degree
degreeLevel <- c("High School", "College", "Masters", "Doctorate")
degreeLevel
degreeOrder <- factor(degree, levels = degreeLevel, ordered = TRUE)
degreeOrder
as.numeric(degreeOrder)


# NA for Missing and NULL for Nothing
p <- c(1, 2, NA, 8, 3, NA, 3)
p
is.na(p)
is.null(p)

q <- c(1, 2, NULL, 8, 3, NULL, 3)
q
is.na(q)
is.null(q)

r <- NULL
r
is.null(r)
