# BASIC VISUALISATION WITH TITANIC

#require(graphics)
#mosaicplot(Titanic, main = "Survival on the Titanic")

setwd("C:/Data/")
Data <- read.csv("titanic.csv", header = TRUE, stringsAsFactors = FALSE)

head(Data)
names(Data)
head(Data$Name, n=10L)
plot(Data$Age)
plot(density(Data$Age, na.rm = TRUE)) # returns the density age
                                      # na.rm	-- Should missing values be removed?
#which(Data$Age > 70) # ???
#install.packages("Amelia")
#require(Amelia)
#missmap(Data, main="Titanic Training Data - Missings Map", col=c("yellow", "black"), legend=FALSE)
# 
barplot(table(Data$Survived), names.arg = c("Perished", "Survived"), 
        main="Survived", col="black")
barplot(table(Data$Pclass), names.arg = c("first", "second", "third"), 
        main="Pclass", col="firebrick")
barplot(table(Data$Sex), main="Sex", col="darkviolet")

hist(Data$Age, main="Age", xlab = NULL, col="brown")

summary(Data$Age)

barplot(table(Data$SibSp), 
        main="SibSp (siblings + spouse aboard)", col="darkblue")
barplot(table(Data$Parch), 
        main="Parch (parents + kids aboard)", col="gray50")
hist(Data$Fare, 
     main="Fare (fee paid for ticket[s])", xlab = NULL, col="darkgreen")
barplot(table(Data$Embarked), names.arg = c("Cherbourg", "Queenstown", "Southampton"), 
        main="Embarked (port of embarkation)", col="sienna")

mosaicplot(Data$Pclass ~ Data$Survived, 
           main="Passenger Fate by Traveling Class", shade=FALSE, 
           color=TRUE, xlab="Pclass", ylab="Survived")
mosaicplot(Data$Sex ~ Data$Survived, 
           main="Passenger Fate by Gender", shade=FALSE, color=TRUE, 
           xlab="Sex", ylab="Survived")
boxplot(Data$Age ~ Data$Survived, 
        main="Passenger Fate by Age",
        xlab="Survived", ylab="Age")

# do boxplot of ages by passenger traveling class