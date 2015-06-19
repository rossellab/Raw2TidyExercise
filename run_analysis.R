# setwd("~/DataScience/GettingAndCleaningData/CourseProject") ## Here I set the working directory, just as a reminder.



## Download the data, unzip the file and read the data into different dataframes

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="dataset.zip",method="curl")
date() ## [1] "Wed Jun 10 12:53:57 2015"
datafiles<-unzip("dataset.zip")
subjectTest<-read.table("UCI HAR Dataset/test/subject_test.txt")
xTest<-read.table("UCI HAR Dataset/test/X_test.txt")
yTest<-read.table("UCI HAR Dataset/test/Y_test.txt")
subjectTrain<-read.table("UCI HAR Dataset/train/subject_train.txt")
xTrain<-read.table("UCI HAR Dataset/train/X_train.txt")
yTrain<-read.table("UCI HAR Dataset/train/Y_train.txt")
featuresNames<-read.table("UCI HAR Dataset/features.txt")



## Merge the different dataframes into one dataframe with all the subjects from
## the test and the train subset and all the measurements

library("dplyr")
dataTest<-data.frame(subject=subjectTest$V1,select(xTest,V1:V561),activity=yTest$V1)
dataTrain<-data.frame(subject=subjectTrain$V1,select(xTrain,V1:V561),activity=yTrain$V1)
dataMerged<-rbind(dataTest,dataTrain)


## Extract only the columns containing measurements that refer to mean values and standard deviations

index<-grepl("mean()",featuresNames$V2,fixed=TRUE) | grepl("std()",featuresNames$V2,fixed=TRUE)
# this line creates an index of column numbers corresponding to
# measurements including "mean()" or "std()" in their names
variablesSelection<-paste0("V",featuresNames$V1[index])
dataExtracted<-select(dataMerged,subject,activity,one_of(variablesSelection))


## Assign human-readable names to every variable

names(dataExtracted)<-append(c("subject","activity"),as.character(featuresNames$V2[index]))
dataNames<-names(dataExtracted)
dataNames<-gsub("-","",dataNames)
dataNames<-gsub("std","Std",dataNames)
dataNames<-gsub("mean","Mean",dataNames)
dataNames<-gsub("[()]","",dataNames)
dataNames<-gsub("BodyBody","Body",dataNames)
dataNames<-gsub("tB","timeB",dataNames)
dataNames<-gsub("tG","timeG",dataNames)
dataNames<-gsub("f","frequency",dataNames)
dataNames<-gsub("Mag","Magnitude",dataNames)
dataNames<-gsub("Acc","Acceleration",dataNames)
dataNames<-gsub("Gyro","AngularVelocity",dataNames)
names(dataExtracted)<-dataNames


## Assign descriptive names to each activity

dataExtracted$activity[dataExtracted$activity==1] <- "walking"
dataExtracted$activity[dataExtracted$activity==2] <- "walking upstairs"
dataExtracted$activity[dataExtracted$activity==3] <- "walking downstairs"
dataExtracted$activity[dataExtracted$activity==4] <- "sitting"
dataExtracted$activity[dataExtracted$activity==5] <- "standing"
dataExtracted$activity[dataExtracted$activity==6] <- "laying"


## Group the data by subject and activity and summarise so that for each subject
## and each activity I report the mean of every measurement

by_subject_and_activity<-group_by(dataExtracted,subject,activity)
dataTidy<- by_subject_and_activity %>% summarise_each(funs(mean))
