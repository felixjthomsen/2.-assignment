#OKAY LETS GO <3

library(knitr)
library(markdown)
library(rmarkdown)
library(tidyverse)
library(lubridate)
library(readxl)
library(ggplot2)
#library(tidymv)
theme_set(theme_bw())

data <- read_csv("data.csv")

#Opgave 1
ggplot(data, aes(x = Hours_Studied, y = Exam_Score, color = Gender)) + geom_jitter() + scale_fill_manual(values = c("blue", "pink"))

#Opgave 2
ggplot(data, aes(x = data$Gender, y = data$Hours_Studied)) + geom_boxplot() +   labs(title = "Boxplot of Hours Studied by Gender", x = "Gender", y = "Hours Studied")

#Opgave 3
ggplot(data, aes(x = Exam_Score)) + geom_histogram(binwidth = 1, aes(fill = ..count..)) + scale_fill_gradient(low = "green", high = "blue") + labs(title = "Histogram of Exam Scores by Student", x = "Exam Score" , y = "Counts of Students")

#Opgave 4


#Opgave 5


#Opgave 6


#Opgave 7



#Opgave 8


