# Chapter 5.1.  data.frames Data Structure

# Three Vectors x, y, and q will be used to create a data.frame
# All vectors must have the smae length to be columns of the data.frame
x <- 10:1
x

y <- -4:5
y

q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacrosse", "Basketball", "Tennis", "Cricket", "Soccer")
q

# Creating a data frame with default column names
theDF <- data.frame(x, y, q)
theDF

# Creating a data frame with named columns
theDF <- data.frame(First = x, Second = y, Sport = q)
theDF

# Attributes
# Count the number of rows of a data.frame
nrow(theDF)
# Count the number of columns of a data.frame
ncol(theDF)
# Count the number of rows and columns of a data.frame
dim(theDF)

# Show the column names of  a data.frame
names(theDF)
names(theDF)[1]
names(theDF)[2]
names(theDF)[3]
names(theDF)[4]


# Show the row names of  a data.frame
rownames(theDF)

# Assign the row names to a data.frame.
rownames(theDF) <- c("One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten")
rownames(theDF)

# Back to the generic index of a data.frame
rownames(theDF) <- NULL
rownames(theDF)

# Show only the first few rows with a default length 6.
head(theDF)
# Show only the first n-th rows.
head(theDF, n = 7)
head(theDF, n = 3)

# Check the class of a data.frame
class(theDF)


# Access the i-th column of a data.frame by its position
theDF <- data.frame(x, y, q)
theDF
theDF[1]
theDF[3]


# Access the i-th column of a data.frame by its name
theDF <- data.frame(First = x, Second = y, Sport = q)
theDF
theDF$First
theDF$Sport

# Access elements of a data.frame
theDF[3, 2]
theDF[3, 2:3]
theDF[c(3,5), 2]
theDF[c(3, 5), 2:3]

theDF[, 3]
theDF[, 2:3]
theDF[2, ]
theDF[2:4, ]
theDF[, c("First", "Sport")]

theDF[, "Sport"]
class(theDF[,"Sport"])

theDF["Sport"]
class(theDF["Sport"])

theDF[["Sport"]]
class(theDF[["Sport"]])

theDF[, "Sport"]
class(theDF[, "Sport"])

theDF[, "Sport", drop=FALSE]
class(theDF[, "Sport", drop=FALSE])

theDF[, 3, drop=FALSE]
class(theDF[, 3, drop=FALSE])
