
# ========================
#  Simple Bar Chart
# ========================

# Load data sets
library(datasets)

# Load data
?mtcars
head(mtcars)

# Bar chart. Use barplot() function
# It does not work, it simply take each row
# and plot it on the bar chart
barplot(mtcars$cyl)


# Instead, we need to create a table with frequencies
# for each category
cylinders <- table(mtcars$cyl) # Reduced to frequency table
barplot(cylinders)             # Now you see it nicely
plot(cylinders)                # Line plot. Not thick






# =====================
# Histogram
# =====================
# Histogram is great for data that is quantitative, scaled,
# measured, interval or ratio leveled
#
# The things we want to see from histogram, is:
#     > Shape (skewness, kurtosis...)
#     > Outliers
#     > Gaps
#     > Symmetry

# Once again, we use iris dataset
?iris
head(iris)


# Let's plot easily using hist() function
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)



# Histogram by Group (By each flower species)
par(mfrow = c(3,1) )  # Plot the graph in 3 rows, 1 column
                      # SO there will be 3 figures


# First, let's see how can we filter out certain rows
# Recall that data frame are just matrix, we want to select
# all rows with iris$Species == 'setosa, and all of its columns!
setosaOnly = iris[iris$Species == 'setosa',]
setosaOnly


# We are ready to go plotting some histograms
# Petal Width for Setosa
hist(iris$Petal.Width[ iris$Species == 'setosa'],
  xlim = c(0,3),     # Show range 0 to 3 only
  breaks = 9,        # How many bars
  main = "Petal Width for Setosa",
  xlab = "",
  col = "red"
)


# Petal Width for Versicolor
hist(iris$Petal.Width[ iris$Species == 'versicolor' ],
  xlim = c(0,3),
  breaks = 9,
  main = 'Petal Width for Versicolor',
  xlab = '',
  col = 'purple'
)


# Petal Width for Virginica
hist(iris$Petal.Width[ iris$Species == 'virginica'],
  xlim = c(0,3),
  breaks = 9,
  main = 'Petal Width for Virginica',
  xlab = '',
  col = 'blue'
)




# Reset the figure plotting to be 1 row 1 column
par(mfrow = c(1,1) )







