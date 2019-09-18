# Assignment Week 3




# topics:   type conversions, factors, plot(), making a data frame from "scratch",
#           reordering, 


# vector operations!

vector1 = c(1,2,3,4,5,6,7,8,9,10)
vector2 = c(5,6,7,8,4,3,2,1,3,10)

vector1*vector2 # multiple each element together in the vector####

list.files()

dat = read.csv("./thatch_ant.csv") #Geoff might mess with the file path for reading in data for the exam###
names(dat) # gives the column names####

#why are these plots different???
plot(x=dat$Headwidth..mm., y=dat$Mass)
plot(x=dat$Size.class, y=dat$Mass)  #plots graphs based with numerical data and categorical data####



#check the classes of these vectors
class(dat$Headwidth..mm.)  #tells you what type of vector you have...####
class(dat$Size.class)

# plot() function behaves differently depending on classes of objects given to it!

# Check all classes (for each column in dat)####

str(dat)

# Two of them are "Factor" ....why is the column "Headwidth" a factor? It looks numeric!
dat$Headwidth                # let's you look at the data in the vector####

levels(dat$Headwidth) #shows you levels within in the vector####

names(dat$Headwidth) #won't work because this is just one column of data####


names(dat) #gives you the column names in the data file####



#TEst: Geoff will ask us to replace items in dat sets####

which(dat$Headwidth =="41mm" ) # shows you the address of the thing you are looking for such as...41mm####

row = which(dat$Headwidth =="41mm" ) #define the row####

col = "Headwidth"  #define the columns.  DON"T write dat$hedwidth because it will rewrite over the vector in the data set####


dat[row,col] #displays the subset####

dat[row,col] <- "41.000"  #allows you to change 41mm to 41.000 ####


levels(dat$Headwidth)  

as.numeric(dat$Headwidth) #changes items to numbers####
as.character(dat$Headwidth) # changes items to characters

as.character(as.numeric (dat$Headwidth))

as.numeric(as.character(dat$Headwidth))

yourmom <- as.numeric(as.character(dat$Headwidth)) #This creates a new vector with the changed data####

#Important:  if you need to replace a value, you must rewrite over the original data set as shown in the next step####

dat$Headwidth <- yourmom  #we are doing this to write over the orginal vecotr to incororate the change.####

dat$yourmom <- yourmom #turns it into a data set####
dat$yourdad <- 0

levels(dat$Size.class)

plot(x=dat$Headwidth, y = dat$Mass)

dat$Mass*dat$Headwidth
datnewcolumn <- dat$Mass*dat$Headwidth   #assigns new column with mass X headwidth####

# we can try to coerce one format into another with a family of functions
# as.factor, as.matrix, as.data.frame, as.numeric, as.character, as.POSIXct, etc....

#make a numeric vector to play with:
nums = c(1,1,2,2,2,2,3,3,3,4,4,4,4,4,4,4,5,6,7,8,9)
class(nums) # make sure it's numeric

# convert to a factor
as.factor(nums) # show in console
nums_factor = as.factor(nums) #assign it to a new object as a factor
class(nums_factor) # check it

#check it out
plot(nums) 
plot(nums_factor)
# take note of how numeric vectors and factors behave differently in plot()


# Let's modify and save these plots. Why not!?
?plot()

plot(nums_factor, main = "Number categories", xlab = "Value", ylab = "Frequency") # how to make graph pretty with labels####


jpeg("../Data_Course_Ashworth/Class notes in R/Numbers1.jpg") #send everything after this line to a file and does not close until dev.off is seen####
#it is like opening a door and does not close until dev.off####
plot(nums, main = "My Title", xlab = "My axis label", ylab = "My other axis label")
dev.off()

jpeg("../Data_Course_Ashworth/Class notes in R/Numbers_categories1.jpg") #send everything after this line to a file and does not close until dev.off is seen####
#it is like opening a door and does not close until dev.off####
plot(nums_factor, main = "Number categories", xlab = "Value", ylab = "Frequency")
dev.off()




# back to our ant data...
dat$Headwidth
levels(dat$Headwidth) # levels gives all the "options" of a factor you feed it

# I notice a couple weird ones in there: "" and "41mm"
# The "" means a missing value, basically. The "41mm" sure looks like a data entry error.
                                            # It should probably be "41.000"

# FIND WHICH ONES HAVE "41mm"
which(dat$Headwidth =="41mm" )


# CONVERT THOSE TO "41.000"



# DO THE SAME FOR "", BUT CONVERT THOSE TO "NA"
which(dat$Headwidth =="")

row = which(dat$Headwidth =="" ) #define the row####

col = "Headwidth" 

dat[row,col]

dat[row,col] <- "NA"


# NOW, REMOVE ALL THE ROWS OF "dat" THAT HAVE AN "NA" VALUE

na.omit(dat)

no_na <- na.omit(dat)


# NOW, CONVERT THAT PESKY "Headwidth" COLUMN INTO A NUMERIC VECTOR WITHIN "dat"
dat$Headwidth <-  as.numeric(as.character(dat$Headwidth))
class(dat$Headwidth)


# LET'S LEARN HOW TO MAKE A DATA FRAME FROM SCRATCH... WE JUST FEED IT VECTORS WITH NAMES!

# make some vectors *of equal length* (or you can pull these from existing vectors)
col1 = c("hat", "tie", "shoes", "bandana")
col2 = c(1,2,3,4)
col3 = factor(c(1,2,3,4)) # see how we can designate something as a factor             

# here's the data frame command:
data.frame(Clothes = col1, Numbers = col2, Factor_numbers = col3) # colname = vector, colname = vector....
df1 = data.frame(Clothes = col1, Numbers = col2, Factor_numbers = col3) # assign to df1
df1 # look at it...note column names are what we gave it.



dat5 <- dat[1:20,c("Colony","Mass")] #allows you to make a data frame because it is already a data frame####




# Make a data frame from the first 20 rows of the ant data that only has "Colony" and "Mass"
# save it into an object called "dat3"
data.frame(dat$Colony[1:20], dat$Mass[1:20])  #does the same thing###

data.frame(dat[1:20,c("Colony","Mass")]) #does the same thing####




###### WRITING OUT FILES FROM R #######
?write.csv()


# Write your new object "dat3" to a file named "LASTNAME_first_file.csv" in your PERSONAL git repository




### for loops in R ###

#simplest example:
for(i in 1:10){
  print(i)
}

#another easy one
for(i in levels(dat$Size.class)){
  print(i)
}

# can calculate something for each value of i ...can use to subset to groups of interest
for(i in levels(dat$Size.class)){
  print(mean(dat[dat$Size.class == i,"Mass"]))
}

# more complex:
# define a new vector or data frame outside the for loop first
new_vector = c() # it's empty
# also define a counter
x = 1

for(i in levels(dat$Size.class)){
  new_vector[x] = mean(dat[dat$Size.class == i,"Mass"])
  x = x+1 # add 1 to the counter (this will change the element of new_vector we access each loop)
}
  
#check it
new_vector



# PUT THIS TOGETHER WITH THE LEVELS OF OUR FACTOR SO WE HAVE A NEW DATA FRAME:
# FIRST COLUMN WILL BE THE FACTOR LEVELS....
# SECOND COLUMN WILL BE NAMED "MEAN" AND WILL BE VALUES FROM  new_vector

#fill it in
size_class_mean_mass = data.frame(...)





############ YOUR HOMEWORK ASSIGNMENT ##############

# 1.  Make a scatterplot of headwidth vs mass. See if you can get the points to be colored by "Colony"
ant <- plot(dat$Headwidth,dat$Mass, col=dat$Colony) #if you want to color a plot use the term col ####


#changing factors to numerics and making bar graphs

# 2.  Write the code to save it (with meaningful labels) as a jpeg file

jpeg("../Data_Course_Ashworth/Practice activities/headwith_vs_massV2.jpg") 
plot(dat$Headwidth,dat$Mass, col=dat$Colony, main = "Headwith vs Mass", xlab = "Headwidth", ylab = "Mass")
dev.off()


# 3.  Subset the thatch ant data set to only include ants from colony 1 and colony 2
dat10 <- dat$Colony %in% c(1,2)


dat$Colony %in% c(1:2)



dat[dat$Colony %in% c(1:2),] #ANSWER!!! the language is go to dat, go to dat$Colony, in it which Colonies are 1 and 2, the comma gives all of the other data columns####

hate_r <- dat[dat$Colony %in% c(1:2),]

getwd()
    
# 4.  Write code to save this new subset as a .csv file
write.csv(hate_r, "../../../Data_Course/Assignments/Assignment_3/Less_PAIN.csv")

# 5.  Upload this R script (with all answers filled in and tasks completed) to canvas
      # I should be able to run your R script and get all the plots created and saved, etc.
