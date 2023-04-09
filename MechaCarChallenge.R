library(dplyr)

mechacar <- read.csv(file="Resources/MechaCar_mpg.csv")

multi <- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar)

summary(multi)
