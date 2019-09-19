DNA <- read.csv("DNA_Conc_by_Extraction_Date.csv")
DNA

DNA$DNA_Concentration_Katy

summary(DNA$DNA_Concentration_Katy)
summary(DNA$DNA_Concentration_Ben)


#Question 1
hist(DNA$DNA_Concentration_Katy, xlab = "[DNA]", ylab = "YEAR", main = "KATY DNA EXTRACTIONS")
hist(DNA$DNA_Concentration_Ben, xlab = "[DNA]", ylab = "YEAR", main = "BEN DNA EXTRACTIONS")


plot(DNA$DNA_Concentration_Katy)

#Question 2

Katy_plot<-plot(DNA$Year_Collected,DNA$DNA_Concentration_Katy, xlab = "YEAR", ylab = "DNA Extractions", main = "Katy's Extractions")

Ben_plot<-plot(DNA$Year_Collected,DNA$DNA_Concentration_Ben, xlab = "YEAR", ylab = "DNA Extractions", main = "Ben's Extractions")


#question 3
jpeg("Ashworth_Plot4.jpg")
plot(DNA$Year_Collected,DNA$DNA_Concentration_Katy, xlab = "YEAR", ylab = "DNA Extractions", main = "Katy's Extractions")

dev.off()

plot(Katy_plot, main = "Katy's Extractions", xlab = "YEAR", ylab = "DNA Extractions")

jpeg("Ashworth_Plot3.jpg")
plot(Ben_plot, main = "Ben's Extractions", xlab = "YEAR", ylab = "DNA Extractions")
dev.off()


#Question 4
plot(DNA$DNA_Concentration_Katy,DNA$DNA_Concentration_Ben)

Kbet <- DNA$

  
#Quesiton 5
  
 

Down <- DNA[DNA$Lab == "Downstairs",]

 plot(Down$Year_Collected,Down$DNA_Concentration_Ben)   
  
#HELP NOTES
 
 jpeg("../Data_Course_Ashworth/Class notes in R/testimage.jpg") #send everything after this line to a file and does not close until dev.off is seen####
#it is like opening a door and does not close until dev.off####
plot(nums, main = "My Title", xlab = "My axis label", ylab = "My other axis label")
dev.off()




plot(DNA$Katy)
?plot

plot(DNA$Katy, x="")


#plot(x = value, y = 1:length(name),...)