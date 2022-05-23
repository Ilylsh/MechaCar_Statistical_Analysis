#Deliverable 1
library(dplyr)
MechaCar_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))

#Deliverable 2
suspension_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
total_summary <-summarise(suspension_table, Mean = mean(PSI),Median = median(PSI),Variance = var(PSI),SD =sd(PSI))
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI),Median = median(PSI),Variance = var(PSI),SD =sd(PSI),.groups = 'keep')

#Deliverable 3
t.test(suspension_table$PSI,mu=1500)
#Analysis of Lot 1
lot1 <- subset(suspension_table,Manufacturing_Lot == "Lot1")
t.test(lot1$PSI,mu=1500)
#Analysis of Lot 2
lot2 <- subset(suspension_table,Manufacturing_Lot == "Lot2")
t.test(lot2$PSI,mu=1500)
#Analysis of Lot 3
lot3 <- subset(suspension_table,Manufacturing_Lot == "Lot3")
t.test(lot3$PSI,mu=1500)

