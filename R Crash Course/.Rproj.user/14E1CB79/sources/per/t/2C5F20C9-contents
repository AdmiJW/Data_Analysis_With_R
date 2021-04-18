# =========================
# 8.0 - Selecting cases
# =========================
#
#


require(datasets)
head(iris)


# Data
hist(iris$Petal.Length)
summary(iris$Petal.Length)

summary(iris$Species)



# Let's analyze the different species separately
# This is done first via 'operating' on the columns, like
#       iris$Species == 'virginica'
# This will return a column of boolean where it is 'true' only
# if that row really has iris$Species == 'virginica'
#
# Then, this boolean column, can be passed as 'index' to the square
# brackets, to specifically select the rows with boolean 'true' only


# Versicolor
versicolor = iris$Species == 'versicolor'
hist(iris$Petal.Length[ versicolor ], main='Petal Length: Versicolor')

# Virginica
virginica = iris$Species == 'virginica'
hist(iris$Petal.Length[ virginica ], main='Petal Length: Virginica')

# Setosa
setosa = iris$Species == 'setosa'
hist( iris$Petal.Length[ setosa ], main='Petal Length: Setosa')



# Of course, we are not limited to select by equaling names. Values
# can also be filtered, via operators like less than <, greater than >


# Short petals only
shortpetals = iris$Petal.Length < 2
hist(iris$Petal.Length[ shortpetals ], main = 'Petal Length < 2')



# It would be more powerful if we could use multiple selectors.
# Use & and | sign for selectors


# Virginica with short petals
virginica = iris$Species == 'virginica'
shortpetals = iris$Petal.Length < 5.5

hist(iris$Petal.Length[ virginica & shortpetals ], 
     main ='Petal Length: Short Virginica')



# If we want to work a lot on selected data, might as well
# store them into SUBSAMPLES.
# Done easily by assigning into variable


# To select from data frame, it must have [row, column]
# if we leave blank, then it gonna select all
# that's why we leave a comma after row selector
setosa.only <- iris[ iris$Species == 'setosa', ]
summary(setosa.only$Species)



# Free variables
rm(list = ls() )


