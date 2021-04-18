#
# ===========================================
#   3.0 - Control Structures and Functions 
# ===========================================
#
# ==================
# Control Structures
# ==================

# if else
if (5 >= 1) {
  print("5 is greater")
} else {
  print("1 is greater")
}


# For loop
for (x in 1:10) {
  print(x)
}


# While loop
x = 10
while (x) {
  print(x)
  x = x-1
}



# ==============
# Functions
# =============
# Functions are created much like javascript, using 'function' keyword

sum <- function(a,b) {
  return(a + b)
}
sum(12, 34)







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
