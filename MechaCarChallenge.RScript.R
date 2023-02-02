# Part 1: Linear Regression to Predict MPG

# Load dplyr package
library(dplyr)

# Import csv file as dataframe
?read.csv
df = read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Perform linear regression 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +
     AWD, data=df)

# Determine the p-value and the r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data=df))

# Part 2: Create Visualizations for the Trip Analysis

# Import csv file as table
df_coil = read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Create a total_summary table
total_summary = df_coil %>% summarize(psi_mean=mean(PSI), psi_median=median(PSI),
                                      psi_variance=var(PSI), psi_sd=sd(PSI))

# Create lot_summary table using group_by()
lot_summary = df_coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(psi_mean=mean(PSI), psi_median=median(PSI), psi_variance=var(PSI), 
            psi_sd=sd(PSI))

# Part 3: T-Tests on Suspension Coils
?t.test
# Determine if all manufacturing lots and each lot individually are 
# statistically different from the population mean of 1,500 pounds psi..
t.test(df_coil$PSI, mu=1500)

# Determine if the PSI for each manufacturing lot is statistically different 
# from the population mean of 1,500 pounds psi.
t.test(subset(df_coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(df_coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(df_coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500)
