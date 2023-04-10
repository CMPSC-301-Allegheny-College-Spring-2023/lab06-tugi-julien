# Data Analytics (CS301) Lab 6 Assignment

## The Statistical Analysis of Economic Data With an Emphasis on Gender Roles in International Business Development

#######################################################

# Names: 
print("The names of this group are the following.")
print("Tuguldur")
print("Julien")
print("Add Your Name Here")
print("Add Your Name Here")

#######################################################
print("The name of this group is the following.")
print("Add Your Name Here")

rm(list = ls()) # clear out the variables
# from memory to make a clean execution of the code.

# If you want to remove all previous plots
# and clear the console, run the following two lines.
graphics.off() # clear out all plots from previous work.

cat("\014") # clear the console

#######################################################

# Instructions: Complete this code using
# RStudio by following the steps in README.md.
# Note: your code must be able to
# execute without errors. Please be sure
# that comments are commended, and code
# is coded correctly without typographical errors.

# you will need to install the dslabs library once.
# install.packages("dslabs")

library(dslabs)
library(dplyr)
library(tidyverse)
library(ggplot2)


dat <- read.table(file.choose(), header = T, sep = ",")
dat1 <- read.table(file.choose(), header = T, sep = ",")


# view the data set.

# dat

df_transposed <- t(dat)
df_transposed1 <- t(dat1)


df_transposed <- as.data.frame(df_transposed)
df_transposed1 <- as.data.frame(df_transposed1)


colnames(df_transposed) <- df_transposed[1,]
colnames(df_transposed1) <- df_transposed1[1,]



colnames(df_transposed)[3] <- "UK, Unemployment with advanced education, female (% of female labor force with advanced education)"
colnames(df_transposed)[4] <- "US, Unemployment with advanced education, female (% of female labor force with advanced education)"

colnames(df_transposed1)[3] <- "UK, Unemployment with advanced education, male (% of male labor force with advanced education)"
colnames(df_transposed1)[4] <- "US, Unemployment with advanced education, male (% of male labor force with advanced education)"

subset_UK_unemp <- df_transposed$`UK, Unemployment with advanced education, female (% of female labor force with advanced education)`[44:65]
subset_UK_unemp <- as.data.frame(subset_UK_unemp)

subset_UK_unemp1 <- df_transposed1$`UK, Unemployment with advanced education, male (% of male labor force with advanced education)`[44:65]
subset_UK_unemp1 <- as.data.frame(subset_UK_unemp1)


subset_US_unemp <- df_transposed$`US, Unemployment with advanced education, female (% of female labor force with advanced education)`[44:65]
subset_US_unemp <- as.data.frame(subset_US_unemp)

subset_US_unemp1 <- df_transposed1$`US, Unemployment with advanced education, male (% of male labor force with advanced education)`[44:65]
subset_US_unemp1 <- as.data.frame(subset_US_unemp1)

combined_subset <- cbind(subset_US_unemp, subset_UK_unemp)
combined_subset1 <- cbind(subset_US_unemp1, subset_UK_unemp1)


# add a new column called "years"
combined_subset$years <- c("1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010","2011", "2012", "2013", "2014","2015","2016","2017","2018", "2019")
combined_subset1$years <- c("1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010","2011", "2012", "2013", "2014","2015","2016","2017","2018", "2019")


ggplot() +
  geom_point(data = combined_subset, aes(x = years, y = subset_US_unemp), color = "red") +
  geom_point(data = combined_subset, aes(x = years, y = subset_UK_unemp), color = "blue") +
  xlab("Years") +
  ylab("Unemployment with advanced education, female (% of female labor force with advanced education)") +
  ggtitle("Women's unemployment rate in the U.S and U.K")

ggplot() +
  geom_point(data = combined_subset1, aes(x = years, y = subset_US_unemp1), color = "red") +
  geom_point(data = combined_subset1, aes(x = years, y = subset_UK_unemp1), color = "blue") +
  xlab("Years") +
  ylab("Unemployment with advanced education, male (% of male labor force with advanced education)") +
  ggtitle("Men's unemployment rate in the U.S and U.K")
