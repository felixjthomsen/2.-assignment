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


### Opgave 1
ggplot(data, aes(x = Hours_Studied, y = Exam_Score)) + geom_jitter() 
