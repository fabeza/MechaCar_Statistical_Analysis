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
