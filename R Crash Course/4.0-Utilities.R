
# ====================
# 4.0 - Utilities
# ====================
#
# In Data Science, a lot of tools are in the functional programming paradigm. Therefore,
# it's never a bad idea to learn some functional programming tools in R


# ============
# lapply
# ============
#
# lapply function will apply a function over all elements in a vector or list. It takes mainly 2 arguments:
# 
#     lapply( iterable, function, ...additionalArguments )
#
# It always return a list of returned values from the function call.

arr <- 1:5

printer <- function(x) {
  print(x)
}

multiplier <- function(x, factor=2) {
  x * factor
}


str( lapply(arr, printer) )                  # Basic form
str( lapply(arr, multiplier, factor=5) )     # Additional Arguments





# ====================
# Anonymous Functions
# ====================
#
# Everything in R is an object. They aren't given any namespace until you assigned them a variable.
#
# Previously, you've seen to create a function, you have to assign a function to a variable, like
#     myFunc <- function(x) {...}
#
# When it is time to use anonymous function, especially in functional tools like lapply, we can simply
# put a function declaration inside
#
#     lapply( vec, function(x) {...} )

arr <- 1:10

str(lapply(arr, function(x) {
  print(x)
}))

str(lapply(arr, function(x, factor=2) {
  x * factor
}, factor=5))





# =====================
# sapply
# =====================
#
# sapply stands for simplify apply. Recall that lapply always return a list, no matter if the function
# is returning the same type.
# 
# Since list is hard to see with when printed on console, instead we might want to use sapply, which
# attempts to convert the list into a vector, if all the element types are the same.
#
# One can specify the argument USE.NAME=FALSE to discard the names set

arr <- 1:10

str(sapply(arr, function(x) {
  print(x)
}))

str(sapply(arr, function(x, factor=2) {
  x * factor
}, factor=5))





# =================
# vapply
# =================
#
# vapply is essentialy a 'manual' type of sapply, which we need to specify the length and type of the return
# vector, if we wish to convert the output list into vectors
#
# However, do note that if conversion fails, error may be thrown
#
# The type is specified in third argument, which the format is kind of like
#
#     <datatype>(vectorsize)
# like
#     char(5)                     -> Character vector of size 5

arr <- 1:10


str(vapply(arr, function(x, factor=2) {
  x * factor
}, factor=5, numeric(1) ))


vapply(arr, function(x) {
  c(decrement=x-1, increment=x+1)
}, numeric(2) )



# =====================
# Handy Functions
# =====================
#
# round() 
# abs()
# sum()
# mean()
# 
# list()                        - List constructor
# seq(start, end, by=1)         - Sequence of numbers
# rep( val, rep )               - Repeat
# sort()
# str()                         - String representation. Nicely done with data structures
# is.<datatype>(val)            - Check if val is of datatype
# as.<datatype>(val)            - Converts val into datatype
# unlist()                      - Convert list into vector
# append()                      - Appends vector or list
# rev()                         - Reverse vector or list




# =====================
# Regular Expression
# =====================
#
# Regular expression won't be explained here, but R has some handy functions to work with
# character vectors via regular expression
#
# grep()    -> Return vector of indices where regular expression is matched (Non-full match)
#     grep(pattern=<regex>, x=<char vector>)
#
# grepl()   -> Return vector of same size, consisting of logical values (TRUE/FALSE) whether regular expression matches
#     grepl(pattern=<regex>, x=<charvector>)
#
# sub()     -> Replaces the FIRST match in each string with a replacement string
#     sub(pattern=<regex>, replacement=<repl>, x=<charvector>)
# 
# gsub()    -> Replaces all matches in a string with a replacement string
#     gsub(pattern=<regex>, replacement=<repl>, x=<charvector>)

names <- c("Adam", "Adriana", "Bob", "Charlie", "Dan")

grep("a", names)
grepl("a", names)

sub("a", "e", names)     # Observe "Adriana"
gsub("a", "e", names)






# ====================
# Date and Times
# ====================
#
# R by default supports Date and Times. 
#
# Sys.Date()                      - Returns Date object representing the time it is called
# as.Date(<str>, format=<fmt>)    - Converts a string into Date. Some default format is ISO ("YYYY-MM-DD")
#
# Sys.time()                      - Returns POSIXct (DateTime) representing the time it is called
# as.POSIXct(<str>, format=<fmt>) - Converts a string into POSIXct format. Default can be ("YYYY-MM-DD HH:mm:SS")
#
#
# Under the hood, Date stores as number of days since 1970, and POSIXct stores number of seconds since 1970
# Use unclass() function to see the numerical representation of a Date or POSIXct object

Sys.Date()
as.Date("2020-02-20")
unclass( Sys.Date() )

Sys.time()
as.POSIXct("2020-02-20 12:00:00")
unclass( Sys.time() )


# %Y: 4-digit year (1982)
# y: 2-digit year (82)
# m: 2-digit month (01)
# %d: 2-digit day of the month (13)
# %A: weekday (Wednesday)
# %a: abbreviated weekday (Wed)
# %B: month (January)
# %b: abbreviated month (Jan)
#
# One could use format() function to obtain desired format of the date or datetime. 

today <- Sys.Date()
format(Sys.Date(), format = "%d %B, %Y")
format(Sys.Date(), format = "Today is a %A!")
