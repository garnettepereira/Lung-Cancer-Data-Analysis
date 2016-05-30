# Fetch the dataset cancer into R
cancer<- read.csv(file="http://vincentarelbundock.github.io/Rdatasets/csv/survival/cancer.csv", header= TRUE, stringsAsFactors=FALSE)
# View the imported dataset cancer
View(cancer)
# Fetch the first 6 rows of the dataset
head(cancer)

# Remove the first column from the dataset
cancer$X <- NULL

# Rename the column names
colnames(cancer)<-c("InstitutionCode","SurvivalTime","CensoringStatus",
                    "Age","Sex","ECOGPerformance",
                    "KPhysicianScore","KPatientScore","MealsCal","WeightLoss")

# Remove the missing data from the dataset
cancer<-cancer[complete.cases(cancer),]

install.packages("stringr")
library(stringr)

# Replace the values of the column Sex
cancer$Sex<- str_replace(cancer$Sex,"1","Male")
cancer$Sex<- str_replace(cancer$Sex,"2","Female")

# Replace the values of the column Censoring Status
cancer$CensoringStatus<- str_replace(cancer$CensoringStatus,"1","Censored")
cancer$CensoringStatus<- str_replace(cancer$CensoringStatus,"2","Dead")

# Fetch the first 6 rows of the dataset
head(cancer)

install.packages("sqldf")
library(sqldf)
install.packages("tcltk2")
library(tcltk2)

# Create a table of counts of the combination of Sex and Censoring Status
counts <- table(cancer$Sex,cancer$CensoringStatus)
# Create a barplot depicting the Frequency Distribution by Sex and Censoring Status
barplot(counts, main="Frequency Distribution by Sex and Censoring Status",
        xlab="Censoring of Patients",ylab="Frequency Count",
        col=rainbow(2),legend = rownames(counts), beside=TRUE)

install.packages("plotrix")
library(plotrix)

# Create Age Groups
cancer$age<- cut(cancer$Age,7)

# Create a data frame of the Age column
age<-as.data.frame(table(cancer$Age))

# Create a label for the age groups
label <- c("39-45", "45-51", "51-57","57-63","63-69","69-75", "75-82")
# Create a 3D Pie Chart showing the Age Distribution of the patients
pie3D(age$Freq,labels=label,explode=0.1, radius=1.5,labelcex =1.3,
      main="Pie Chart of Age Distribution \n of Patients")

install.packages("scatterplot3d")
library(scatterplot3d) 
# Attach the dataset cancer
attach(cancer)

# Create a 3D Scatter Plot showing the Weight Loss By Survival Time and Meals Calories
scatterplot3d(SurvivalTime,WeightLoss,MealsCal, pch=20,type="h",
              highlight.3d=TRUE,ylim=c(-20,40),
              zlim=c(0,2000),main="Weight Loss By Survival Time and Meals Calories")

# Create Age Groups
cancer$age<- cut(cancer$Age,7)
# Create data frame of the Age column
age<-as.data.frame(table(cancer$age))
# Combine the frequencies of the age groups
agegroup<-age$Freq

# Combine the two box plots arranged in 1 row and 2 columns
par(mfrow=c(1,2))

# Create a box plot of the Age Vs Karnofsky Performance Score By Physician
boxplot(KPhysicianScore~Age,col=rainbow(50),  
        main="BoxPlot of Age (vs) \n Karnofsky Performance Score By Physician",ylim=c(50,100),
        xlab="Age of Patient", ylab=" Karnofsky Physician Score")

# Create a box plot of the Age Vs Karnofsky Performance Score By Patient
boxplot(KPatientScore~Age,col=rainbow(50),  
        main="BoxPlot of Age (vs) \n Karnofsky Performance Score By Patient",ylim=c(50,100),
        xlab="Age of Patient", ylab=" Karnofsky Patient Score")