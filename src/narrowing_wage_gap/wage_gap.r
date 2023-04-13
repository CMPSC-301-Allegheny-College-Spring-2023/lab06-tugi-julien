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


data3 <- read.table(file.choose(), header = T, sep = ",")


# view the data set.

# dat

labor_transposed <- t(data3)

labor_transposed <- as.data.frame(labor_transposed)

colnames(labor_transposed) <- labor_transposed[1,]


colnames(labor_transposed)[2] <- "UK, Wage and salaried workers, female (% of female employment) (modeled ILO estimate)"
colnames(labor_transposed)[1] <- "US, Wage and salaried workers, female (% of female employment) (modeled ILO estimate)"

colnames(labor_transposed)[3] <- "US, Wage and salaried workers, male (% of male employment) (modeled ILO estimate)"
colnames(labor_transposed)[4] <- "UK, Wage and salaried workers, male (% of male employment) (modeled ILO estimate)"


subset_US_wage_gap_fem <- labor_transposed$`US, Wage and salaried workers, female (% of female employment) (modeled ILO estimate)`[36:64]
subset_US_wage_gap_fem <- as.data.frame(subset_US_wage_gap_fem)

subset_UK_wage_gap_fem <- labor_transposed$`UK, Wage and salaried workers, female (% of female employment) (modeled ILO estimate)`[36:64]
subset_UK_wage_gap_fem <- as.data.frame(subset_UK_wage_gap_fem)

subset_US_wage_gap_male <- labor_transposed$`US, Wage and salaried workers, male (% of male employment) (modeled ILO estimate)`[36:64]
subset_US_wage_gap_male <- as.data.frame(subset_US_wage_gap_male)

subset_UK_wage_gap_male <- labor_transposed$`UK, Wage and salaried workers, male (% of male employment) (modeled ILO estimate)`[36:64]
subset_UK_wage_gap_male <- as.data.frame(subset_UK_wage_gap_male)

combined_subset_wage_gap_female <- cbind(subset_US_wage_gap_fem, subset_UK_wage_gap_fem)
combined_subset_wage_gap_male <- cbind(subset_US_wage_gap_male, subset_UK_wage_gap_male)


# add a new column called "years"

combined_subset_wage_gap_female$years <- c("1991", "1992", "1993", "1994", "1995", "1996", "1997", "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019")
combined_subset_wage_gap_male$years <- c("1991", "1992", "1993", "1994", "1995", "1996", "1997", "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019")


ggplot() +
  geom_point(data = combined_subset_wage_gap_female, aes(x = years, y = subset_US_wage_gap_fem), color = "blue") +
  geom_point(data = combined_subset_wage_gap_male, aes(x = years, y = subset_US_wage_gap_male), color = "red") +
  xlab("Years") +
  ylab("US, Wage and salaried workers, male and female (% of male and female employment) (modeled ILO estimate") +
  ggtitle("US, Wage and salaried workers, male and female") +
  geom_line(linetype = "dashed")


ggplot() +
  geom_point(data = combined_subset_wage_gap_male, aes(x = years, y = subset_UK_wage_gap_male), color = "red") +
  geom_point(data = combined_subset_wage_gap_female, aes(x = years, y = subset_UK_wage_gap_fem), color = "blue") +
  xlab("Years") +
  ylab("UK, Wage and salaried workers, male and female (% of male and female employment) (modeled ILO estimate") +
  ggtitle("UK, Wage and salaried workers, male and female")