# 7.2. ggplot2
# 7.2.1 ggplot2 Histograms and Densities
# ggplot2 - ggplot2 Histogram
# Initialize the data object and then add layers using the + symbol.
# aes means aesthetic mapping.
ggplot(data = diamonds) + geom_histogram(aes(x = carat))
ggplot(data = diamonds) + geom_histogram(aes(x = carat)) + facet_wrap(~color)

ggplot(data = diamonds) + geom_density(aes(x = carat))
ggplot(data = diamonds) + geom_density(aes(x = carat),fill = "grey50")
ggplot(diamonds) + geom_histogram(aes(x = carat))
ggplot(data = diamonds) + geom_density(aes(x = carat,fill = "brey50"))

ggplot(data = diamonds) + geom_point(aes(x = carat, y = price))

########################################################
# 7.2.2 ggplot2 Scatterplots
g <- ggplot(diamonds, aes(x = carat, y = price))
g + geom_point()
g + geom_point(aes(color = color))
ggplot(data = diamonds) + geom_point(aes(x = carat, y = price, color = color))

ggplot(data = diamonds) + geom_point(aes(x = carat, y = price, color = "blue"))
ggplot(data = diamonds) + geom_point(aes(x = carat, y = price), color = "blue")

# Faceted plots or small multiple plots
# According to the levels of one variable
g + geom_point(aes(color = color)) + facet_wrap(~color)
# According to the levels of two variables
g + geom_point(aes(color = color)) + facet_grid(cut ~ clarity)

# Faceted histrograms
ggplot(diamonds, aes(x = carat)) + geom_histogram() + facet_wrap(~color)

#-------------------------------------------------------
# 7.2.3. ggplot2 Boxplots and Violins Plots
# A boxplot
ggplot(diamonds, aes(y = carat, x =1)) + geom_boxplot()

# Multiple boxplots
ggplot(diamonds, aes(y = carat, x =cut)) + geom_boxplot()
# Multiple violinplots
ggplot(diamonds, aes(y = carat, x =cut)) + geom_violin()

# The order of layers matters.
ggplot(diamonds, aes(y = carat, x =cut)) + geom_point() + geom_violin()
ggplot(diamonds, aes(y = carat, x =cut)) + geom_violin() + geom_point()

#-------------------------------------------------------
# 7.2.4 ggplot2 Line Graphs
head(economics)
ggplot(economics, aes(x = date, y = pop)) + geom_line()

# A package that has convenient functions for manipulating dates
install.packages("lubridate")
require(lubridate)

economics$date

economics$year <- year(economics$date)
economics$year

economics$month <- month(economics$date, label = TRUE)
economics$month

econ2000 <- economics[which(economics$year >= 2000), ]

install.packages("scales")
require(scales)
g <- ggplot(econ2000, aes(x=month, y = pop))
g

# Create a line graph with a separate line and color for each year.
# Grouping
g <- g + geom_line(aes(color=factor(year), group=year))
g
# Legend
g <- g + scale_color_discrete(name = "Year")
g
# y axis with commas
g <- g + scale_y_continuous(labels = comma)
g
# A title and axis labels
g <- g + labs(title="Population Growth", x = "Month", y = "Population")
g

#-------------------------------------------------------
# 7.2.5. Using Themes
install.packages("ggthemes")
require(ggthemes)

head(diamonds)
g2 <- ggplot(diamonds, aes(x = carat, y = price)) + geom_point(aes(color = color))
g2

# The Economist Theme
g2 + theme_economist_white()
g2 + theme_economist_white() + scale_colour_economist()

# The Excel Theme
g2 + theme_excel()
g2 + theme_excel() + scale_colour_excel()

# Edward Tufte Theme
g2 + theme_tufte()

# The Wall Street Journal Theme
g2 + theme_wsj()

