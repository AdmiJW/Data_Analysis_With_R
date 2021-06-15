# ======================================
#     2.0 - Basic Datatypes
# ======================================


# R is an interpreted language. This means we can use it
# like an interactive console.
# For example, use as calculators:
1 + 2
5 - 3
4 / 3   # It detects and automatically convert result to float
5 ^ 3   # Use ^ for exponent
9 %% 2  # Two %% for modulo



# For assignment operator, we may commonly use '=' sign
# However, there is another in R, using '<-'
x = 15
x <- 13
print(x)



# The basic data types in R are
#     > Numeric: 1, 10, 1C, 2E
#     > Integer: 2L,15L,33L       << 'L' tells to store as int
#     > Boolean: TRUE, FALSE
#     > Characters: "a", "hello world"
#     > Complex: 1+4i

x <- "Hello World"
typeof(x)
x <- 13
typeof(x)
x <- 13L
typeof(x)



# Note: To check length of string, use nchar(), not length()
nchar("hello")
length("hello")  # Treats as vector with 1 element only


# To concatenate strings, one cannot use + operator. Please use paste() function which takes in
# multiple arguments and concatenate them delimited with space (default). For no delimiter, use paste0()
paste("Hel", "lo", " ", "Wor", "ld")
paste0("Hel", "lo", " ", "Wor", "ld")



# On the other hand, we may use cat() function



# To split strings, use strsplit(), which take in arguments as follows:
#
#     strsplit( str, split, fixed ...)
#
# split is the regex used as delimiter, and fixed is boolean indicate whether delimiter is exact match or FALSE to use regex
# Thus if you want to get the characters, use delimiter as ""
x <- "Split this string for me please"
strsplit(x, " ", fixed=TRUE)

