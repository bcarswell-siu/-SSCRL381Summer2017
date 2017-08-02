# Chapter 6.1. Reading a CSV (Comma Separated Values) file
# read.table function

# Get a "Tomato First.csv" at "http://www.jaredlander.com/data/Tomato%20First.csv"
theURL <- "http://www.jaredlander.com/data/Tomato%20First.csv"

# The full path of the file to be loaded
# The first row of  data holds the column names
# The delimiter separating data cells
tomato <- read.table(file = theURL, header = TRUE, sep = ",")
head(tomato)