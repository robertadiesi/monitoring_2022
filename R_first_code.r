# This is my first code in github!

# Here are the input data
# Costanza data on streams
water <- c (100, 200, 300, 400, 500)

# Marta data on fish genomes
fish <- c (10, 50, 60, 100, 200)

# For windows
setwd("C:/lab/")


# From now on, we are gonna import and/or export data!
read.table("my_first_table.txt")

# Let's assign it to an object inside R
robertatable <- read.table("my_first_table.txt")

# To summarize, the first statistics for lazy beautiful people
summary(robertatable)

# Marta doesn't like water
# Marta wants to get info only on fish
summary(robertatable$fish)

# Let's try to do the mean
mean(c(22,23,25,26,27))

# For the histogram
hist(robertatable$fishes)
hist(robertatable$water)
