#Practical 3: Data Cleaning and Preprocessing in R
library(dplyr)
#load Dataset
data("airquality")
head("airquality")

#1.check for missing values
sum(is.na(airquality))
colSums(is.na(airquality))

#2. handle missing values
#replace missing ozone values with mean
airquality$Ozone[is.na(airquality$Ozone)]<-mean(airquality$Ozone,na.rm=TRUE)

#replace missing solar.R values with median
airquality$Solar.R[is.na(airquality$Solar.R)]<-median(airquality$Solar.R,na.rm=TRUE)

#3. remove duplicates(example with iris dataset)
data("iris")
iris_with_duplicates<-rbind(iris,iris[1:5, ])#add duplicates artificially
nrow(iris_with_duplicates)#before removing
iris_clean<-distinct(iris_with_duplicates)#remove dulpicates
nrow(iris_clean) #after removing

#4. Standardize Formats
iris_clean$Species<-tolower(as.character(iris_clean$Species))
iris_clean$Species<-as.factor(iris_clean$Species)

#view cleaned dataset
head(iris_clean)


