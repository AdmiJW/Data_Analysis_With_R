# =======================================
#     2.1 - Basic Data Structures
# =======================================
#
# Having Data types are not enough. We need data structures
# (Eg: array) to manage data better
#
# **********************************************
# FIRST AND FOREMOST, INDEXING IN R STARTS AT 1
# **********************************************
#
# The data structures in R include:
#     > Atomic Vector
#     > List
#     > Matrix
#     > Data Frame
#     > Factors


# =================
#  Vectors
# =================
# Vectors is the most common and basic data structure. It is
# essentially an array
#
# Vectors cannot held data of different types. If characters and numbers are mixed, numbers
# are converted to characters automatically


# Create a simple vector via constructor vector()
#       vector(mode = 'logical', length = 0L)
# Where the 'mode' argument is the data type it stores
v = vector()
v
c = vector('character', length = 5)
c
c = character(5)      # Use datatype's constructor to make vector
c


# To have a vector initialized, we can use 'c(...v)' where c stands
# for combine
n = c(1,2,3)
n
s = c("Alex", "Sarah", "Bill")
s



# Instead of being like a regular array which each element is referred to
# via its index, we can actually assign each element a string to better 
# characterize the value itself. Now it has the ability to work like a Hash Map!
#
# This is done by assigning names(v) with a string, like
#
#       names(my_vector) <- c("a","b") 
#
# Note that it must be character type.
named_vector = c(30, 70, 90, 10, 20)
names(named_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
named_vector





# Accessing a vector is no more than simply using square brackets and indices
# BUUUUUUUT!!!!! R Programming Language is 1-indexed.
# So, first element is v[1], not v[0]!
#
# To select multiple elements at once, remember: Every thing inside square bracket
# is selected. So, use c() inside square bracket to select whatever index you want
#
# Or to select a range of values, do it like in Python! like v[1:3] which is 1 to 3 inclusive
access_me <- c(1,2,3)
names(access_me) <- c("One", "Two", "Three")

access_me[1]   
access_me[ c(1,3) ]
access_me[ 1:2 ]
access_me["Three"]



# To work with vectors, use typeof(), length(), class(), str()...
typeof(s)
length(s)
class(s)
str(s)

# Except from initializing a vector, c() can extend a vector, too (new copy)
# This is done by including the old vector in the c() of the new vector
s = c(s, "Daniel", 'Ziara')
s
# Create vectors as a sequence of numbers
series <- 1:10
series
series <- seq(10)
series
series <- seq(from=1, to=10, by=0.5)
series




# There are 3 special types in vector: Inf, NaN and NA
x <- c(Inf, NaN, NA)
x


# To parse a datatype, use 'as.<class_name>()' function
as.numeric("123")
as.character(12L)
as.character(1:10)


# If you've taken linear algebra before, the behavior of summing vector
# is exactly like the one taught in your course -- Element wise sum!]
#
# Note: After summing, the resulting vector will maintain the names of first vector
#       (Unless first vector is not named, then second vector will be taken)
odds_num <- c(1,3,5)
even_num <- c(2,4,6)

odds_num + even_num



# Of course, you could sum up the elements in an array via sum() function
# or perhaps, the mean() function for average
sum( c(1,2,3) )
mean( c(1,2,3) )



# Vector selection by comparison is done like in Python.
# Say you want to select certain elements from vector via conditions. This is done
# using comparison operators and logical operators, which is going to return a new
# vector of same size but consist of TRUE and FALSE only, indicating which element
# should be selected given your condition.

i_want_positive <- c(-1,1,-2,3)

filter <- i_want_positive > 0
filter
i_want_positive[ filter ]



# ========================
#   MATRICES
# ========================
# Matrices are simply a vector with dimensions, with property
# of column and rows
#
# The elements of matrix must be of the same data type
#
# To create a matrice, use the function matrix(), with the possible arguments:
#
# matrix( data, nrow, ncol, byrow=FALSE ...)

one_to_nine <- matrix(1:9, byrow=TRUE, nrow = 3)
one_to_nine
dim(one_to_nine)


# Previously, we can name vector elements. The same could be done in matrices, via
# rownames() and colnames()

one_to_nine <- matrix(1:9, byrow=TRUE, nrow=3 )
rownames(one_to_nine) <- c("Row 1", "Row 2", "Row 3")
colnames(one_to_nine) <- c("Col 1", "Col 2", "Col 3")

one_to_nine


# Calculating the sum can be done row-wise and col-wise. Use
# rowSums() and colSums()
one_to_nine <- matrix(1:9, byrow=TRUE, nrow=3 )

rowSums(one_to_nine)
colSums(one_to_nine)


# We can append a new column easily into the matrix via cbind() function.
# Of course, its counterpart is rbind(), which adds new row into matrices or vectors
#
# cbind(matrix1, matrix2, vector1......)
# rbind(matrix1, matrix2, vector1......)

v1 <- c(1,2,3)
v2 <- c(4,5,6)

cbind(v1, v2)
rbind(v1, v2)



# Turns out, the dim of the matrix can be changed, this essentially
# reshapes the matrix
m <- matrix(c(1,2,3,4,5,6) )
dim(m) <- c(2,3)
m



# Since matrices are 2 dimensional (or higher!), we have to select datas differently than vectors.
# Essentially, inside the square bracket, each dimensions's selector is separated by a comma
#
# Eg: [ 2, 3 ] selects second row, third column's data
#     [ 1:3, c(2,4) ] selects first to third row, and only second and fourth column's data
#     [, 3] selects all row, but third column's data
one_to_nine <- matrix(1:9, byrow=TRUE, nrow=3 )

one_to_nine[ 1:2, 3]
one_to_nine[ 1, ]


# When we perform arithmetics on matrices, it is done element-wise. For example, 4 * matrice1 will
# multiply each element by 4.
#
# If arithmetic is done on two matrices of same size, it also perform the arithmetic element-wise.
# For example, if mat1 * mat2, the first element will be product of first element in mat1 and mat2.

matrix1 <- matrix(1:4, nrow=2 )
matrix2 <- matrix(2:5, nrow=2 )

matrix1
matrix2

matrix1 * matrix2





# =====================
# Factors
# =====================
#
# Factors are a statistical datatype used to store categorical variables. Categorical
# variables can only have limited number of values. Eg: "Male" and "Female"
#
# To create factors, we simply use the constructor like anything else, factor( datavector )
# Factor levels of a factor is simply the number of unique categories of the factor.
# Eg: "Male" and "Female" has 2 factor levels.
#
# You might have learnt that categorical variables can be either nominal or ordinal.
# Factors in R can differentiate this when you specify it in the factor()

animals <- c("Cat", "Dog", "Bird", "Cat", "Dog")
animal_factor <- factor(animals)

animal_factor


levels <- c("High", "Low", "Medium", "Low", "High")
levels_factor <- factor(levels, order=TRUE, levels=c("Low", "Medium", "High") )

levels_factor



# Say we have collected 'M' and 'F' for gender data.
# We might want to map those factor levels to be represent the full form "Male" and "Female",
# aka changing the category values. This can be done by assigning to levels()

genders_factor <- factor( c("M", "F", "F", "F", "M", "M") )

# Identify the ordering first before assigning! It shows Levels: F M, so F is first, M is second
genders_factor

levels(genders_factor) <- c("Female", "Male")
genders_factor


# Now we can interpret the categorical variable by doing summary() function, which shows frequency of all factor levels
genders_factor <- factor( c("M", "F", "M", "F", "F", "M", "F", "F", "F", "M", "F") )
summary(genders_factor)



# In ordinal factors, since each categoricy are ranked (Eg: "Fast" > "Medium" > "Slow"), we have the ability to compare
# individual observations!
#
# Eg: [ "fast", "medium", "slow", "fast", "slow", "medium" ]
# We might want to ask: Is 1st element greater than 5th element? In the example, the answer is true.

ratings_of_movie <- factor( c("high", "low", "medium", "low", "medium"), ordered=TRUE, levels=c("low", "medium", "high") )

# Is 1st movie better than 3rd?
ratings_of_movie[1] > ratings_of_movie[3]



# =====================
# Data Frame
# =====================
#
# Previously, we've looked at matrices to contain data in rows and columns. However,
# they must be of the very same data type. In Data Frame, we can have columns that consist of
# different data types. This resemblance with the data collected in a survey, which can be mixing of
# nominal, ordinal, interval or ratio
#
# Most of the time, it is created when we use read.csv() or read.table()
# To create one ourselves, use data.frame() function
# 
# Use nrow( df ) and ncol( df ) to find out number of entries and fields, or simply dim()

df = data.frame(id = letters[1:10], x = 1:10, y = 11:20 )
df


# Here are some useful dataframe functions
#   > head()          -Show first 6 rows
#   > tail()          -Show last 6 rows
#   > dim()           -Dimension of dataframe
#   > nrow()          -Number of rows
#   > ncol()          -NUmber of columns
#   > str()           -Name, type and preview of columns
#   > names()         -Show the names attribute of data frame

head(df)
tail(df)
dim(df)
nrow(df)
ncol(df)
str(df)
names(df)


# As with matrices, we can access rows and columns via square bracket method, comma to separate dimensions
df[1,2]   # Row 1, Column 2
df[1, ]   # Row 1
df[,1]    # Column 1


# Additionally, we could simply use the name of the column in selection
# One neat trick when selecting entire row, specific column is to use dollar sign syntax, $
df[ 1:3, "x" ]   # Row 1-3, column "x"
df[ , "x" ]      # All rows column "x"

df$x             # All rows column "x"


# Often, we only want to work with a subset of rows. Of course we could use conditional selection
# previously (Creating boolean vector using comparison operators, then select using square bracket),
# but we can do it shorthand using subset() function
#
# subset( df, subset = <condition> )

subset( df, subset= (x > 4) )     # Only rows that has "x" greater than 4



# In R, you could sort easily using sort() function. However, if we want to get the original indices
# of the elements after sorting, then we have the order() function.
# This turns out to be useful in sorting data frames, or something like calculating Spearman rank coefficient

arr <- c(10000, 10, 100, 1000)
sort(arr)
order(arr)

arr[ order(arr) ]     # Remember what this does: selecting rows according to the vector passed in

df[ order(df$y, decreasing=TRUE), ]  # Order data frame descending by y value







# ==========================
# Lists
# ==========================
#
# So far, vectors and matrices cannot hold different data types. Data frame is able to do that, but in 2D.
# For simple 1D vector that is able to hold different data types, we have Lists.
#
# To construct a list, use list() function, pass in items as arguments
# Remember that list can hold anything! Therefore, first element can be a matrix, second be vector etc...

df <- data.frame( v1 = 1:10, v2 = 11:20 )
mat <- matrix( 1:20, nrow=2, byrow=TRUE )
vec <- c(1,2,3,4,5,6,7)

li <- list(df, mat, vec)


# Similar with vectors, we can name its elements. This is done via names() function, or even when we initialize the
# list itself

li <- list( dataframe=df, matrices=mat, vect=vec )
li

li <- list(df, mat, vec)
names(li) <- c("dataframe", "matrices", "vect")
li



# In R, particularly when dealing with lists, you might notice the usage of [] and [[]] in selecting data
# The difference is that:
#
#   []    - Returns a LIST of selected data
#   [[]]  - Returns the SINGLE element selected
#
# Therefore, we can select any single element in list using [[]] syntax. Of course, if the list are named,
# you are free to use $ syntax

li[[3]]
li[["vect"]]
li$vect

