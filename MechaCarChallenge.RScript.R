# Load dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_table <- read.csv(file="MechaCar_mpg.csv")

# Perform multiple linear regression
multi_lr <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)

# Determine the p-value and the r-squared value for the linear regression model
summary(multi_lr)
