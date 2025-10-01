#importing and exploring a data set in R
#1. Import air quality data set and check its structure using str()
data("airquality")
str(airquality)

#2.Find number of missing values in airquality
sum(is.na(airquality))
#sum(is.na(airquality)) → gives total missing values.

#3.Use summary() on the mtcars dataset and interpret the output
summary(mtcars)
#summary(mtcars) → shows min, max, mean, median, quartiles.

#4.Find the mean horsepower (hp) in the mtcars dataset
mean(mtcars$hp)
#mean(mtcars$hp) → gives average horsepower.

#5.Group the iris dataset by species and calculate the average Sepal.Width
aggregate(iris$Sepal.Width,by=list(Species=iris$Species),FUN=mean)
#iris$Sepal.Width → the variable we want to summarize.
#by = list(Species = iris$Species) → tells R to group the data by Species.
#FUN = mean → specifies the function to apply (here, mean).
