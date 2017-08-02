############################################################################### 6.7 Extract Data from Web Sites from Simple HTML tables
# readHTML( ) Table function

# Assume XML package was installed.
# install.packages("XML")
require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"

# File path and name
# Which table in the file
# Whether header is used or not
# The character columns would not be converted to factors.
bowlPool <- readHTMLTable(theURL, which = 1, header = FALSE, stringAsFactors = FALSE)
bowlPool

