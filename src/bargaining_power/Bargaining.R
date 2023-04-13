# Date: 13 apr 2023
# Lab 06:

# Name: Tuguldur Julien

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


data2 <- read.table(file.choose(), header = T, sep = ",") # read the 
data2[data2 == '..'] <- NA


# view the data set.

# dat

labor_transposed <- t(data2)

labor_transposed <- as.data.frame(labor_transposed)

colnames(labor_transposed) <- labor_transposed[1,]


colnames(labor_transposed)[2] <- "UK, Female share of employment in senior and middle management (%)"
colnames(labor_transposed)[1] <- "US, Female share of employment in senior and middle management (%)"


subset_US <- labor_transposed$`US, Female share of employment in senior and middle management (%)`[45:67]
subset_US <- as.data.frame(subset_US)

subset_UK <- labor_transposed$`UK, Female share of employment in senior and middle management (%)`[45:67]
subset_UK <- as.data.frame(subset_UK)


combined_subset <- cbind(subset_US, subset_UK)


# add a new column called "years"

combined_subset$years <- c("2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019","2020","2021","2022")


ggplot() +
  geom_point(data = combined_subset, aes(x = years, y = subset_US), color = "red") +
  geom_point(data = combined_subset, aes(x = years, y = subset_UK), color = "blue") +
  xlab("Years") +
  ylab("Female share of employment in senior and middle management (%)") +
  ggtitle("Female share of employment in senior and middle management (%)") +
  geom_line(linetype = "dashed")

