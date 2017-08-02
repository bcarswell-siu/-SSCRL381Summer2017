# Brandon Carswell
# Week 7 Lab Assignment

# Create a Hello World Statement in R.  Once you have created
# the statement, then I want you to use the fuction argument and pass
# arguments to your function.


hello.world <- function(fname, lastname, date)
{
    print(sprintf("Hello %s %s %s", fname, lastname, date))
}

hello.world("Brandon", "Carswell", "August 2nd, 2017")
