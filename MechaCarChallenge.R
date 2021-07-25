# adding libraries
library(dplyr)

mpg <- read.csv('/Users/homeoffice/Desktop/RESOURCES/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',stringsAsFactors = F) # loading mpg data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg) # create linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg)) # summarize linear regression
sus_coils <- read.csv('/Users/homeoffice/Desktop/RESOURCES/MechaCar_Statistical_Analysis/Suspension_Coil.csv', stringsAsFactors = F) # loading suspension coil data
total_summary <- sus_coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) # Create a summary for all PSI data
lot_summary <- sus_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) # Create a summary for each lot
