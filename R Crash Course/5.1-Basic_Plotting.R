# ================================
#     5.0 - Basic Plotting
# ================================
#
# As a statistical programming language, it is important
# to be able to plot stuff easily. 
# In R, it is as simple as calling plot() function
#
# One advantage of R is the plot() function adapts to the 
# data types and the number of variables easily.
#






# Start by loading data sets, a library that comes with
# sample data sets for us to work with
library(datasets)

# In this chapter, we will use the sample famous data set, 'iris'


# Let's check out some rows of the 'iris'
head(iris)


# We can get help on function by prefix with ? sign
?plot


# To specify a column in data set, use $ sign, like
#     dataframe$column


# Categorical Variable. 'Setosa', 'Versicolor' or 'virginica'
plot(iris$Species)  # You can see, Histogram showing 50 of each category


# Quantitative variable 
plot(iris$Petal.Length)    # Scatter plot, x axis is index number


# x axis - Categorical, y axis - Quantitative
plot(iris$Species, iris$Sepal.Length)  # Box plot


# xy Quantitative
plot(iris$Petal.Length, iris$Petal.Width)  # Scatter plot


# Entire data frame
plot(iris)  # Matrices of scatter plot










# Of course, customize the plot with arguments
plot(iris$Petal.Length, iris$Petal.Width,
     col = '#cc0000',                               # Color of 
     pch = 19,                                      # Point character - Solid circle
     main = 'Iris: Petal Length vs. Petal Width',   # Title
     xlab = 'Petal Length',                         # X label
     ylab = 'Petal Width'                           # Y label
)









# We can use plot() with formulas, with limit of course!
plot(cos, 0, 2*pi)    # Plot a cosine function from 0 to 2pi
plot(exp, 1, 5)       # Exponent
plot(dnorm, -3, +3)   # Distribution - Normal










# Let's plot the function with options
plot(dnorm, -3, +3,
     col='#cc0000',
     lwd='5',                              #Line width
     main='Standard Normal Distribution',
     xlab='z-scores',
     ylab='density'
)

