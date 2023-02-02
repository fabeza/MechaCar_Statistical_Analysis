# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

![mpg_linear_regression.png](https://github.com/fabeza/MechaCar_Statistical_Analysis/blob/07c9c861e25dd2608a1faa3f197b86037eab9496/Images/mpg_linear_regression.png)

From the linear regression model summary above we can determine the following:

* The vehicle length and ground clearance variables provided a non-random amount of variance to the log values in the dataset. In other words, the vehicle length and ground clearance have a significant impact on the vehicle's fuel efficiency (MPG).

* A p-value of 5.35e-11 (lower than the significance level of 0.05) suggests that the slope is not zero.

* An R-squared value of 0.7149 reveals that 71% of the variability observed in the target variable is explained by the linear regression model. Therefore, this model predicts mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data shows the PSI variance for all manufacturing lots is 62.3 which meets the design specification. 

![total_summary.png](https://github.com/fabeza/MechaCar_Statistical_Analysis/blob/07c9c861e25dd2608a1faa3f197b86037eab9496/Images/total_summary.png)

When looking at each lot individually, Lot1 and Lot2 are compliant with manufacturing specifications, with a PSI variance of 0.97 and 7.47 respectively. Lot3 has a PSI variance of 170.29, which means it does not meet the manufacturing specifications and must be corrected.

![lot_summary.png](https://github.com/fabeza/MechaCar_Statistical_Analysis/blob/07c9c861e25dd2608a1faa3f197b86037eab9496/Images/lot_summary.png)

## T-Tests on Suspension Coils

T-Tests were used to determine if the PSI across all manufacturing lots, grouped and individually, is statistically different from the population mean of 1,500 pounds psi. These were the results:

* The t-test performed on across all manufacturing lots returned a p-value of 0.06, with a significance value of 0.05, there is not sufficient evidence to reject the null hypothesis. In other words, the mean PSI of 1498.78 across all manufacturing lots in this dataset is not statistically different from the population mean of 1,500 pounds PSI.

![all_lots_ttest.png](https://github.com/fabeza/MechaCar_Statistical_Analysis/blob/07c9c861e25dd2608a1faa3f197b86037eab9496/Images/all_lots_ttest.png)

* The t-tests performed on Lot1 and Lot2 returned a p-value of 1 and 0.6 respectively. This means there is not sufficient evidence to reject the null hypothesis, and Lot1 and Lot2's mean PSIs are not statistically different from the population mean of 1,500 pounds PSI.

![lot1_ttest.png](https://github.com/fabeza/MechaCar_Statistical_Analysis/blob/07c9c861e25dd2608a1faa3f197b86037eab9496/Images/lot1_ttest.png)
![lot2_ttest.png](https://github.com/fabeza/MechaCar_Statistical_Analysis/blob/07c9c861e25dd2608a1faa3f197b86037eab9496/Images/lot2_ttest.png)

* The t-test performed on Lot3 returned a p-value of 0.04, being below the 0.05 significance level, there is sufficient evidence to reject the null hypothesis. This means Lot3's mean PSI is statistically different from the population mean of 1,500 pounds PSI.

![lot3_ttest.png](https://github.com/fabeza/MechaCar_Statistical_Analysis/blob/07c9c861e25dd2608a1faa3f197b86037eab9496/Images/lot3_ttest.png)

## Study Design: MechaCar vs Competition

According to data from Statista's Global Consumer Survey, there are three factors at the top of the car buyer's checklist, **fuel efficiency**, **safety**, and **price**. [1]
Based on this recent consumer survey, it is recommended that MechaCar conducts a statistical study that assesses their performance by measuring and comparing these key metrics in its vehicles against vehicles from its competitors: city and highway fuel efficiency (MPG), safety rating, and selling price. This study will determine if MechaCar's vehicle performance is sub par, on par, or above par the performance of its competitors.

The hypotheses for this statistical study would be as follows:
* Null hypothesis: MechaCars' mean city and highway fuel efficiency, safety rating, and selling price are not statistically different from the mean city and highway fuel efficiency, safety rating, and selling price of vehicles from other manufacturers.
* Alternative hypothesis: MechaCars' mean city and highway fuel efficiency, safety rating, and selling price are statistically different from the mean city and highway fuel efficiency, safety rating, and selling price of vehicles from other manufacturers.

An ANOVA test would be the best fit for this study as it would determine if there is a statistical difference between the distribution means from multiple vehicle samples. The results would determine if MechaCar's means for fuel efficiency, safety rating, and selling price are below, equal, or above its competitors'.

[1] Source: [Most Important Factors When Buying a Car](https://www.statista.com/chart/13075/most-important-factors-when-buying-a-car/)