# =======================
# 6.0 - Scatterplot
# =======================
#
# In scatterplot, there are several things we want to look for:
#     > Linearility
#     > Spread
#     > Outliers
#     > Correlation
#


# Load sample dataset
library(datasets)

?mtcars
head(mtcars)



# Let's check for univariate distributions first
hist(mtcars$wt)
hist(mtcars$mpg)



# Let's plot a X-Y scatterplot plot now:
plot(mtcars$wt, mtcars$mpg)



# Customize our plot, especially colors
plot(mtcars$wt, mtcars$mpg,
  pch = 19,
  cex = 1.5,
  col = "#cc0000",
  main = 'MPG as a Function of Weight of Cars',
  xlab = 'Weight (in 1000 pounds)',
  ylab = 'MPG'
)





# ===========================
# Lines and Overlaying plots
# ===========================
#
# By overlaying/ superimposing plots, we are increasing the information
# density (At same amount of space, there is more information). It may allow us to 
# observe certain patterns if the variables are related to each other
#
# However, don't overdo this simply because you can. It may potentially make your
# visualization overwhelming


# Let's use new data set, 'Lynx'. It is a time series, and it starts at 1821 to 1934
?lynx
head(lynx)


# Histogram
hist(lynx)       # Turns out, most of the values fall into 1000 range


# Add some options to Histogram
hist(lynx,
  breaks = 14,             # Suggest 14 'bins' (bars)
  freq = FALSE,            # Show density instead of frequency
  col = 'thistle1',
  main = paste("Histogram of Annual Canadian Lynx",   # paste() concatenate strings
               "Trappings", "1821-1934"),
  xlab = 'Number of Lynx Trapped'
)


# Now, in addition to the above histogram, let's put a normal distribution on top!
curve(dnorm(x, mean=mean(lynx), sd=sd(lynx)),
      col = 'thistle4',
      lwd = 2,
      add = TRUE          # This 'add' asks is to superimpose previous drawn graph
)



# Also, add Kernel Density Estimators
lines( density(lynx), col='blue', lwd=2 )
lines( density(lynx, adjust=3), col='purple', lwd=2 )


# Lastly, add a rug plot at bottom of the x axis
rug( lynx, lwd=2, col='grey')







