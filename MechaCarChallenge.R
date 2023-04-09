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

# Deliverable 3

alaska <- subset(sardines, location == 1)
mean(alaska$vertebrae)
# Calculate the population mean for Sardine Vertebrae in San Diego.
# Hint: use the subset() function to get only the data for San Diego.
sandiego <- subset(sardines, location == 6)
mean(sandiego$vertebrae)
# Calculate Independent (Two Sample) T-Test
t.test(alaska$vertebrae, sandiego$vertebrae)

t.test(coil$PSI, mu = 1500)

lot1 <- subset(coil, Manufacturing_Lot == "Lot1")
lot2 <- subset(coil, Manufacturing_Lot == "Lot2")
lot3 <- subset(coil, Manufacturing_Lot == "Lot3")

t.test(lot1$PSI, mu = 1500)
t.test(lot2$PSI, mu = 1500)
t.test(lot3$PSI, mu = 1500)














