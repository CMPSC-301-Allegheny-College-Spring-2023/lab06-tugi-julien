# Date: 20 March 2023
# Lab 05: On Vaccines

# Name: Tuguldur Gantulga

rm(list = ls()) # clear out the variables
# from memory to make a clean execution of the code.

# If you want to remove all previous plots
# and clear the console, run the following two lines.
graphics.off() # clear out all plots from previous work.

cat("\014") # clear the console

########################################################


library(dslabs)
library(dplyr)
library(tidyverse)
library(ggplot2)


data2 <- read.table(file.choose(), header = T, sep = ",")
data2[data2 == '..'] <- NA

# view the data set.

# dat

labor_transposed <- t(data2)

labor_transposed <- as.data.frame(labor_transposed)

colnames(labor_transposed) <- labor_transposed[1,]


colnames(labor_transposed)[2] <- "UK, Age at first marriage, female"
colnames(labor_transposed)[1] <- "US, Age at first marriage, female"

colnames(labor_transposed)[3] <- "US, Age at first marriage, male"
colnames(labor_transposed)[4] <- "UK, Age at first marriage, male"


subset_US_marriage_fem <- labor_transposed$`US, Age at first marriage, female`[27:56]
subset_US_marriage_fem <- as.data.frame(subset_US_marriage_fem)

subset_UK_marriage_fem <- labor_transposed$`UK, Age at first marriage, female`[27:56]
subset_UK_marriage_fem <- as.data.frame(subset_UK_marriage_fem)

subset_US_marriage_male <- labor_transposed$`US, Age at first marriage, male`[27:56]
subset_US_marriage_male <- as.data.frame(subset_US_marriage_male)
subset_UK_marriage_male <- labor_transposed$`UK, Age at first marriage, male`[27:56]
subset_UK_marriage_male <- as.data.frame(subset_UK_marriage_male)

combined_subset_marriage_female <- cbind(subset_US_marriage_fem, subset_UK_marriage_fem)
combined_subset_marriage_male <- cbind(subset_US_marriage_male, subset_UK_marriage_male)


# add a new column called "years"

combined_subset_marriage_female$years <- c("1982", "1983", "1984", "1985", "1986", "1987", "1988", "1989", "1990", "1991", "1992", "1993", "1994", "1995", "1996", "1997", "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011")
combined_subset_marriage_male$years <- c("1982", "1983", "1984", "1985", "1986", "1987", "1988", "1989", "1990", "1991", "1992", "1993", "1994", "1995", "1996", "1997", "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011")


ggplot() +
  geom_point(data = combined_subset_marriage_female, aes(x = years, y = subset_US_marriage_fem), color = "red") +
  geom_point(data = combined_subset_marriage_female, aes(x = years, y = subset_UK_marriage_fem), color = "blue") +
  xlab("Years") +
  ylab("Age at first marriage, female)") +
  ggtitle("Age at first marriage, female") +
  geom_line(linetype = "dashed")


ggplot() +
  geom_point(data = combined_subset_marriage_male, aes(x = years, y = subset_US_marriage_male), color = "red") +
  geom_point(data = combined_subset_marriage_male, aes(x = years, y = subset_UK_marriage_male), color = "blue") +
  xlab("Years") +
  ylab("Age at first marriage, male") +
  ggtitle("Age at first marriage, male")