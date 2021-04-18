# ==========================
# 7.0 - Basic Statistics
# ==========================
#
# We are done with all of the visualizations, it is important to also get numerical statistics,
# like counts, quartile, means, medians, etc...
#
# Fortunately, in R it is quite easy.

library(datasets)

head(iris)            # Doing 'iris' data set once more



# Start off by summary() function. If done on data frame, will summarize each column separately
summary(iris)


# Summarize columns
summary(iris$Species)        # Categorical
summary(iris$Sepal.Length)   # Quantitative




# The summary() is quite simple, we may want to know more details!
# For this, let's use describe() from the 'psych' package (Not built in)
# It gives:
#   n, mean, SD, median, 
#   10% trimmed mean, MAD, min,max, range, skewness, kurtosis, Standard error

pacman::p_load(psych)
library(psych)

?psych


# describe() only works on quantitative data
describe(iris$Sepal.Length)
describe(iris)
