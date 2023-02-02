# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

![mpg_linear_regression.png]()

From the linear regression model summary above we can determine the following:

The vehicle length and ground clearance variables provided a non-random amount of variance to the log values in the dataset. In other words, the vehicle length and ground clearance have a significant impact on the vehicle’s fuel efficiency (MPG).

A p-value of 5.35e-11 (lower than the significance level of 0.05) suggests that the slope is not zero.

 An R-squared value of 0.7149 reveals that 71% of the variability observed in the target variable is explained by the linear regression model. Therefore, this model predicts mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data shows the PSI variance for all manufacturing lots is 62.3 which meets the design specification. 

![total_summary.png]()

When looking at each lot individually, Lot1 and Lot2 are compliant with manufacturing specifications, with a PSI variance of 0.97 and 7.47 respectively. Lot3 has a PSI variance of 170.29, which means it does not meet the manufacturing specifications and must be corrected.

![lot_summary.png]()

## T-Tests on Suspension Coils
