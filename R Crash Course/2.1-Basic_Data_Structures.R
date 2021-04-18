# =======================================
#     2.1 - Basic Data Structures
# =======================================
#
# Having Data types are not enough. We need data structures
# (Eg: array) to manage the datas better
#
# FIRST AND FOREMOST, INDEXING IN R STARTS AT 1
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
# > Atomic Vectors (Static)
# > Lists          (Dynamic)


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



# To work with vectors, use typeof(), length(), class(), str()...
typeof(s)
length(s)
class(s)
str(s)
# Except from initializing a vector, c() can extend a vector, too (new copy)
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





# ========================
#   MATRICES
# ========================
# Matrices are simply a vector with dimensions, with property
# of column and rows
#
# The elements of matrix must be of the same data type

m <- matrix(nrow = 2, ncol = 2)
m
dim(m)


fours <- matrix(
  c(4,4,4,4,4,4),
  nrow=3,
  ncol=2
)
fours



# Turns out, the dim of the matrix can be changed, this essentially
# reshapes the matrix
m <- matrix(c(1,2,3,4,5,6) )
dim(m) <- c(2,3)
m







# =====================
# Data Frame
# =====================
#
# Data Frame is probably most important data structure, as it is used in
# tabular data.
#
# Most of the time, it is created when we use read.csv() or read.table()
# To create one ourselves, use data.frame() function
# 
# Use nrow( df ) and ncol( df ) to find out number of entries and fields
#
#

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

# To access a column, use dollar sign or double bracket
df$id
df[['id']]
# To access a row, use as follows:
df[1,]
df[2,]




