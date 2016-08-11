getwd()
setwd(/Users/monicaseeley/Documents/R Files/Titanic)
library(readr)
library(ggplot2)
library(dplyr)

Titanic<- read_csv(Titanic_clean.csv)
View(Titanic)

str(Titanic)

ggplot(Titanic, aes(factor(pclass), fill=factor(sex)))+ geom_bar(position= "dodge")

ggplot(Titanic, aes(factor(pclass), fill=factor(sex)))+ geom_bar(position= "dodge")+ facet_grid(".~survived")

posn.j <- position_jitter(0.5, 0)

ggplot(Titanic, aes(factor(pclass), age, col=factor(sex)))+ geom_jitter(size= 3, alpha= 0.5, position= posn.j)+ facet_grid(".~survived")
