#ch042.R
# Chapter 4.2 Variables

#Two Assignment Operators

x<-2
x
y=5
y

# left-hand side variable vs. right-hand side variable

z<-3
x
3<-z
Z

# Successive assignment for assigning a value to multiple variables simultaneously

a<-b<-7
a
b

# The assign fuction

assign("J",4)
j

# Variable naming convention
#Any combonation of alphanumeric characters along with periods and underscores
x123<-100
x123

x_value<-200
x_value

x.value <-300
x.value

x__value<-400
x__value
x..value<-500
x..value

# A variable name cannot start with a number or an underscore
1x<-400
_value<-100

#Removing a Variable
j<-100
j
rm(j)
j<-200
j
gc(j)

# R varibale names are case sensitive
x1<-17
x1
X1

