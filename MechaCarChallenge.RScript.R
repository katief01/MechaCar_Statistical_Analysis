# Load dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_table <- read.csv(file="MechaCar_mpg.csv")

# Perform multiple linear regression
multi_lr <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)

# Determine the p-value and the r-squared value for the linear regression model
summary(multi_lr)

# import and read in the Suspension_Coil.csv file as a table.
SCoil_table <- read.csv(file="Suspension_Coil.csv")

# Create a total_summary dataframe using the summarize() function on PSI column
total_summary <- SCoil_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), PSI_Variance=var(PSI), Standard_Devation=sd(PSI), .groups = 'keep')

# Create a lot_summary dataframe 
lot_summary <- SCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), PSI_Variance=var(PSI), Standard_Devation=sd(PSI), .groups = 'keep')

# Determine if PSI across all manufacturing lots is statistically diff from the pop. mean of 1,500 lbs per sq inch.
t.test(SCoil_table$PSI,mu = 1500)

# Write 3 more RScripts to determine if PSI for each manufacturing lot is statistically diff from the pop mean of 1,500 lbs per sq inch.
lot1 <- subset(SCoil_table, Manufacturing_Lot=='Lot1') # Create subset for lot 1 cars
t.test(x=lot1$PSI, mu=1500) # t-test on lot 1 cars' PSI with a mean of 1500
lot2 <- subset(SCoil_table, Manufacturing_Lot=='Lot2') # Create subset for lot 2 cars
t.test(x=lot2$PSI, mu=1500) # t-test on lot 2 cars' PSI with a mean of 1500
lot3 <- subset(SCoil_table, Manufacturing_Lot=='Lot3') # Create subset for lot 3 cars
t.test(x=lot$PSI, mu=1500) # t-test on lot 3 cars' PSI with a mean of 1500
