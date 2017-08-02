# Read the diamonds data from ggplot2 package
require(ggplot2)
data("diamonds")
head(diamonds)

########################################################
# Base Graphics - Base Histogram, Base Scatterplot, and Boxplot
# 7.1.1. Base Histogram
# Show the distribution of the carat size of diamonds.
hist(diamonds$carat, xlab = "Carat")

# 7.1.2. Base Scatterplot
# Show the price of diamonds against the carat
plot(price ~ carat, data = diamonds)
plot(diamonds$carat, diamonds$price)


# 7.1.3. Boxplot
boxplot(diamonds$carat)
