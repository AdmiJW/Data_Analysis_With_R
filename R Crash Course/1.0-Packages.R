# ==============================================================
#       1.0 Packages 
# ==============================================================
#
# Packages are simply scripts and functions that are written
# by other programmers
# This prevents us from reinventing the wheel, and trying to
# write certain implementations might pose too challenging for
# us.
#
#
# We can obtain packages through 3 ways:
#   1. CRAN
#   2. Crantastic! (Listing website for CRAN)
#   3. Github
#
#
# From the crash course, these are frequently used packages:
#   1. dplyr - Manipulation of dataframes
#   2. tidyr - Cleaning up info
#   3. stringr - Working with strings
#   4. lubridate - Manipulate dates
#   5. httr - Manipulate website data
#   6. ggvis - gg (Grammar of Graphics) - Interactive visualizations
#   7. ggplot2 - Graphics / Data visualization
#   8. shiny - Interactive application usable on website
#   9. rio - Input output
#   10. markdown - Interactive notebooks
#
#
# However, there is 'one package to load them all' package,
#   > Pacman (Package Manager)



# ==========================
# Native Package Management
# ==========================
#
# Use install.package( <packageName> ) to install certain package. It will look it up
# from CRAN
#
# Use require( <packageName> ) or library( <packageName> ) to load your package into the
# environment. 
# The different is:
#   > require() does not throw error if package is not installed. Also, it gives confirmation
#     message once loaded
#   > library() throws error if package is not installed. Also, it does not give confirmation
#     message
#
# To unload package, use detact('package:<packageName>', unload=TRUE)



# To use pacman, use
# Note this is the native way of installing packages
install.packages('pacman')

# Although installed, we need to manually load it, which is done via
require(pacman) # With Confirmation message
library(pacman) # No confirmation message


# Even if not loaded, we still can use package functions
# this line calls pacman's function, to load packages
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio, rmarkdown,
               shiny, stringr, tidyr)



# To update packages, use
#     update.packages()
update.packages('pacman')


# To clear packages (unload), use pacman's function
p_unload(dplyr, tidyr, stringr) # Clear specific packages
p_unload(all) # Clear all packages

# Or use base function,
# Format:
#     detach('package:<package_name>', unload=TRUE)
detach('package:datasets', unload=TRUE) # This unloads base package datasets



# To remove packages, use
#       remove.packages('<package_name', lib='<directory>')
# or simply use RStudio GUI 



