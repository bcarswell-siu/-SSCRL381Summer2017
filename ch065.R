# Chapter 6.5. RData File
# save( ) function
# Store an object inot a single rdata file
save(tomato, file="tomato.rdata")

# Remove tomato from memory
rm(tomato)

# Check if it still exists
head(tomato)

# Read it from the rdata file
load("tomato.rdata")
head(tomato)

# Create a few objects
n <- 20
r <- 1:10
w <- data.frame(n, r)
w

# Store three objects into a single rdata file
save(n, r, w, file="multiple.rdata")
rm(n, r, w)
n
r
w

load("multiple.rdata")
n
w
r
