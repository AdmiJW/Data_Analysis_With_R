#
# ===========================================
#   3.0 - Control Structures and Functions 
# ===========================================
#
# =============================
# Conditionals and Control Flow
# =============================
# 
# Comparison operators are: ==, !=, >, <, >=, <=
#
# Remember that, these operators can work on linear data structures like vectors or even matrices and data frame.
# Just that it performs the operation element-wise.

a <- c(1,5,10)
b <- c(2,4,6)

a > b


# Logical operators are: !, & and |
#
# If we have a vector or matrix of boolean, we can use logical operator to perform the operation element-wise.
# BUT ONLY IF YOU USE SINGLE SYMBOL VARIANCE. DONT USE DOUBLE SIGN VARIANT like &&, ||

a <- c(FALSE, FALSE, TRUE, TRUE)
b <- c(FALSE, TRUE, FALSE, TRUE)

a & b
a && b            # If you use double sign variant, it will only check first element



# ==================
# Control Structures
# ==================


# if else if else
#
#   if ( condition ) { }
#   else if ( condition ) { }
#   else { }
x <- 5

if (x %% 2 == 0) {
  print("x is divisible by 2")
} else if (x %% 3 == 0) {
  print("x is divisible by 3")
} else {
  print("x is not divisible by 2 and 3")
}





# While loop. 
#   while (condition) {
#     ...
#   }
#
# 'break' - breaks out of the loop
# 'next' - 'continue' equivalent in other languages. Immediately jump to next iteration
x <- 10
while (x) {
  print(x)
  
  if (x == 2) break
  
  x <- x - 1
}




# For loop
#   for (var in seq) {
#     ...
#   }

# For loop in purest form
for (x in 1:10) {
  print(x)
}


names <- c("Adam", "Adrian", "Bob")

# For loop over indices
for (i in 1:length(names)) {
  print(names[i])
}





# ==============
# Functions
# ==============
#
# Many things in R are done by functions. To quickly check the function header, use the args() function
# If that doesn't clarify your doubt, feel free to use ? operator, or help() function
args(sum)
args(strsplit)
help(sum)
?sum


# Functions are created by assigning a variable name, a function!
#
# There are a few things to note:
#   >   To return is also a function, return(val)
#   >   We don't necessary need to use return(val) to return a value. At the end of the function, we could
#       just type the return value naked.
add <- function(a,b) {
  a + b                 # No need for return()
}

reciprocal <- function(v) {
  if (v == 0) 
    return (-1)
  1 / v
}

sum(12, 34)
reciprocal(0)
reciprocal(1)






# =====================
# Import/Export
# =====================
#
# R has a special extension for data, .Rdata
# We load and save these kind of data using save() and load()
#
# As for csv, use
# write.csv() and read.csv()

df = data.frame(x = 1:10, y = seq(10,100,10))
df

write.csv(df, "./exampledata.csv")
df = read.csv("./exampledata.csv")

# As for excel files, we can read via GUI menus
# File -> Import Dataset -> Excel
