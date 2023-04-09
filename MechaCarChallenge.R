library(dplyr)


# Deliverable 1
mechacar <- read.csv(file="Resources/MechaCar_mpg.csv")

multi <- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar)

summary(multi)


# Deliverable 2
coil <- read.csv(file="Resources/Suspension_Coil.csv")

total_summary <- summarise(coil, mean(PSI), median(PSI), var(PSI), sd(PSI))

names(total_summary)[names(total_summary) == 'mean(PSI)'] <- 'Mean'
names(total_summary)[names(total_summary) == 'median(PSI)'] <- 'Median'
names(total_summary)[names(total_summary) == 'var(PSI)'] <- 'Variance'
names(total_summary)[names(total_summary) == 'sd(PSI)'] <- 'SD'


lot_summary <- summarise(group_by(coil, Manufacturing_Lot), mean(PSI), median(PSI), var(PSI), sd(PSI))
names(lot_summary)[names(lot_summary) == 'mean(PSI)'] <- 'Mean'
names(lot_summary)[names(lot_summary) == 'median(PSI)'] <- 'Median'
names(lot_summary)[names(lot_summary) == 'var(PSI)'] <- 'Variance'
names(lot_summary)[names(lot_summary) == 'sd(PSI)'] <- 'SD'


