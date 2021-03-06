# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
The output from the multiple linear regression showed p-values for all six(6) variables in the MechaCar dataset, which included vehicle length, vehicle weight, ground clearance, spoiler angle, and all-wheel-drive status.

<img width="502" alt="Linear_Regression_Model" src="https://user-images.githubusercontent.com/74223626/112874754-eeb93800-9088-11eb-9fa3-ba92ed41f726.png">

1) The vehicle length and ground clearance variables/coefficients provided a significant, non-random amount of variance to the mpg values in the MechaCar dataset.  The vehicle weight showed a p-value of 0.08 which is not as significant since there is still an 8% chance that the null hypothesis is true.
2) The slope of the linear model for these non-random variables are not considered to be zero because if there is a significant linear relationship between the independent variable and the dependent variable, the slope will not equal zero.
3) This linear model effectively predicts mpg of MechaCar prototypes based on these specific variables, vehicle length, ground clearance, and possibly weight. 

## Summary Statistics on Suspension Coils
The lot_summary statistics created in this challenge showed a very similar mean and median among the 3 lots of MetaCars yet showed a wide difference between the PSI variance and Standard Deviation among the 3 lots of MetaCars.  

<img width="597" alt="lot_summary_MechaCar_Challenge" src="https://user-images.githubusercontent.com/74223626/112872451-06db8800-9086-11eb-9bb1-5eb70cddf0aa.png">

The total_summary statistics showed that lot #2 has the closest standard deviation to the Total Summary and the total PSI variance fell between lot #2 and lot #3 and was closer to the lot #2 variance. 

<img width="478" alt="total_summary_MechaCar_Challenge" src="https://user-images.githubusercontent.com/74223626/112872568-24a8ed00-9086-11eb-94ea-51836ec6596b.png">

Since the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch, the current manufacturing data does meet this design specification for all manufacturing lots in total (total_summary) with a variance of 62.3 pounds per sq. inch. When each lot was reviewed individually (lot_summary), only lot #1 (variance = 0.98 pounds per sq. inch) and lot #2 (variance 7.57 pounds per sq. inch) met this specification. Lot #3 showed too high of a variance with a result of 170.29 pounds per sq. inch.

## T-Tests on Suspension Coils
The t-test results on the three manufacturing lots showed that lot 3 has the smallest statistical difference from the population mean of 1,500 pounds per square inch. Lot 2 had a slight statistical difference and lot 1 had the largest statistical difference from the population mean as shown in the screenshots below.

# Lot 1
<img width="402" alt="Lot1_t-test_D3" src="https://user-images.githubusercontent.com/74223626/112904599-cb08e880-90ae-11eb-8d90-bb53a0db3aca.png">

# Lot 2
<img width="399" alt="Lot2_t-test_D3" src="https://user-images.githubusercontent.com/74223626/112904817-233fea80-90af-11eb-9016-60db315ab1d4.png">

# Lot 3
<img width="407" alt="Lot3_t-test_D3" src="https://user-images.githubusercontent.com/74223626/112904854-32bf3380-90af-11eb-9502-c6d6276eebf4.png">

## Study Design: MechaCar vs Competition

A statistical study that I would design to quantify how the MechaCar performs against the competition would include the following metrics:
* cost
* city and highway fuel efficiency
* horse power
* safety rating

I would perform tests comparing the average cost, miles per gallon, horse power and safety rating for this study. An alternative hypothesis in the study could be that if we have a high fuel economy, we will have a high safety rating on our vehicles. To test this I would perform a two-sample t-test to compare the mean fuel economy with the mean safety rating of the vehicles. I would need the fuel economy metrics for all vehicles as well as the safety rating metrics for all vehicles.
