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

########################################################

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


dat <- read.table(file.choose(), header = T, sep = ",") #choose female data
dat1 <- read.table(file.choose(), header = T, sep = ",") # choose male data
data2 <- read.table(file.choose(), header = T, sep = ",") # the third both male and women data



# view the data set.

# dat

df_transposed <- t(dat)
df_transposed1 <- t(dat1)
labor_transposed <- t(data2)


df_transposed <- as.data.frame(df_transposed)
df_transposed1 <- as.data.frame(df_transposed1)
labor_transposed <- as.data.frame(labor_transposed)

colnames(df_transposed) <- df_transposed[1,]
colnames(df_transposed1) <- df_transposed1[1,]
colnames(labor_transposed) <- labor_transposed[1,]



colnames(df_transposed)[3] <- "UK, Unemployment with advanced education, female (% of female labor force with advanced education)"
colnames(df_transposed)[4] <- "US, Unemployment with advanced education, female (% of female labor force with advanced education)"

colnames(df_transposed1)[3] <- "UK, Unemployment with advanced education, male (% of male labor force with advanced education)"
colnames(df_transposed1)[4] <- "US, Unemployment with advanced education, male (% of male labor force with advanced education)"

colnames(labor_transposed)[2] <- "UK, Labor force participation rate, female (% of female population ages 15-64) (modeled ILO estimate)"
colnames(labor_transposed)[1] <- "US, Labor force participation rate, female (% of female population ages 15-64) (modeled ILO estimate)"

colnames(labor_transposed)[3] <- "US, Labor force participation rate, male (% of male population ages 15-64) (modeled ILO estimate)"
colnames(labor_transposed)[4] <- "UK, Labor force participation rate, male (% of male population ages 15-64) (modeled ILO estimate)"

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

subset_US_labor_fem <- labor_transposed$`US, Labor force participation rate, female (% of female population ages 15-64) (modeled ILO estimate)`[44:65]
subset_US_labor_fem <- as.data.frame(subset_US_labor_fem)

subset_UK_labor_fem <- labor_transposed$`UK, Labor force participation rate, female (% of female population ages 15-64) (modeled ILO estimate)`[44:65]
subset_UK_labor_fem <- as.data.frame(subset_UK_labor_fem)

subset_US_labor_male <- labor_transposed$`US, Labor force participation rate, male (% of male population ages 15-64) (modeled ILO estimate)`[44:65]
subset_US_labor_male <- as.data.frame(subset_US_labor_male)

subset_UK_labor_male <- labor_transposed$`UK, Labor force participation rate, male (% of male population ages 15-64) (modeled ILO estimate)`[44:65]
subset_UK_labor_male <- as.data.frame(subset_UK_labor_male)

combined_subset_labor <- cbind(subset_US_labor_fem, subset_UK_labor_fem)
combined_subset_labor_male <- cbind(subset_US_labor_male, subset_UK_labor_male)


# add a new column called "years"
combined_subset$years <- c("1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010","2011", "2012", "2013", "2014","2015","2016","2017","2018", "2019")
combined_subset1$years <- c("1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010","2011", "2012", "2013", "2014","2015","2016","2017","2018", "2019")
combined_subset_labor$years <- c("1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010","2011", "2012", "2013", "2014","2015","2016","2017","2018", "2019")
combined_subset_labor_male$years <- c("1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010","2011", "2012", "2013", "2014","2015","2016","2017","2018", "2019")


ggplot() +
  geom_point(data = combined_subset, aes(x = years, y = subset_US_unemp), color = "red") +
  geom_point(data = combined_subset, aes(x = years, y = subset_UK_unemp), color = "blue") +
  xlab("Years") +
  ylab("Unemployment with advanced education, female (% of female labor force with advanced education)") +
  ggtitle("Women's unemployment rate in the U.S and U.K") +
  geom_line(linetype = "dashed")

ggplot() +
  geom_point(data = combined_subset1, aes(x = years, y = subset_US_unemp1), color = "red") +
  geom_point(data = combined_subset1, aes(x = years, y = subset_UK_unemp1), color = "blue") +
  xlab("Years") +
  ylab("Unemployment with advanced education, male (% of male labor force with advanced education)") +
  ggtitle("Men's unemployment rate in the U.S and U.K")

ggplot() +
  geom_point(data = combined_subset_labor, aes(x = years, y = subset_US_labor_fem), color = "red") +
  geom_point(data = combined_subset_labor, aes(x = years, y = subset_UK_labor_fem), color = "blue") +
  xlab("Years") +
  ylab("Labor force participation rate, female (% of female population ages 15-64) (modeled ILO estimate") +
  ggtitle("Women's labor participation rate in the U.S and U.K")

ggplot() +
  geom_point(data = combined_subset_labor_male, aes(x = years, y = subset_US_labor_male), color = "red") +
  geom_point(data = combined_subset_labor_male, aes(x = years, y = subset_UK_labor_male), color = "blue") +
  xlab("Years") +
  ylab("Labor force participation rate, female (% of female population ages 15-64) (modeled ILO estimate") +
  ggtitle("Men's labor participation rate in the U.S and U.K")


data <- data.frame(subset_US_unemp, combined_subset$years, subset_US_unemp1, subset_US_labor_male)
model <- lm(unlist.subset_US_unemp. ~ combined_subset$years + unlist.subset_US_unemp1. + unlist.subset_US_labor_male., data = data)

# Load the dataset manually
data <- data.frame(
  year = c(1998:2019),
  women_unemp = c(2.28, 2.15, 2.09, 2.59, 3.17, 3.25, 3.06, 2.79, 2.52, 2.50, 3.10, 5.03, 5.26, 5.17, 4.99, 4.45, 3.82, 3.15, 2.96, 2.79, 2.48, 2.41),
  men_unemp = c(1.87, 2.09, 1.79, 2.54, 3.47, 3.65, 3.14, 2.63, 2.34, 2.34, 2.93, 5.65, 5.69, 5.10, 4.49, 4.19, 3.56, 2.91, 2.86, 2.58, 2.42, 2.35),
  male_labor_part = c(83.11, 82.93, 82.32, 81.74, 80.86, 80.53, 80.37, 80.51, 80.23, 79.92, 78.78, 77.95, 77.35, 77.71, 77.30, 77.14, 77.20, 77.54, 77.77, 78.00, 78.31, NA),
)

# Run a linear regression with women unemployment rate as the dependent variable
model <- lm(women_unemp ~ men_unemp+ male_labor_part, data=data)

# View the summary of the model

#view the model output
summary(model)