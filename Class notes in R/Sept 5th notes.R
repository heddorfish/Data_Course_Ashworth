data ("iris")
# calculate summary stats on sepal length for each species (min, max,mean) and compile into a new data frame###
Iris[setosa]


iris[iris$Species == "virginica",]


vsl=iris[iris$Species == "virginica","Sepal.Length"]

max(vsl)
min(vsl)
mean(vsl)

iris[iris$Species == "setosa","Sepal.Length"]
ssl=iris[iris$Species == "setosa","Sepal.Length"]
max(ssl)
min(ssl)
mean(ssl)

iris[iris$Species == "versicolor","Sepal.Length"]
iris[iris$Species == "setosa","Sepal.Length"]

iris[iris$Species == "versicolor","Sepal.Length"]
vesl = iris[iris$Species == "versicolor","Sepal.Length"]
max(vesl)
min(vesl)
mean(vesl

summary (ssl)          
summary(vesl)
summary (vsl)

rbind(summary (ssl), summary(vesl), summary (vsl)) #rbind combines rows, cbind combines columns####

newtable <- rbind(summary (ssl), summary(vesl), summary (vsl)) # makes this a table####

?write.csv()

write.csv(newtable,"../Data_Course_Ashworth/Assignments/newtable.csv") # tells you to put new table in Data_Course_Ashworth/Assignments####


