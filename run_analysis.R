#Unzip the data to the working directory, maintaining the folder structure of the zip
#Reading in required packages
library(data.table)

#Read in column descriptors
ColumnNames<-data.table(read.table("./UCI HAR Dataset/features.txt"))
ColumnNamesList<-as.vector(ColumnNames$V2)

#Read in TrainingData and format
TrainingData<-data.table(read.table("./UCI HAR Dataset/train/X_train.txt",col.names=ColumnNamesList))
TrainingLables<-data.table(read.table("./UCI HAR Dataset/train/Y_train.txt"))
setnames(TrainingLables,"Col1")
TrainingLableValues<-unique(TrainingLables)
#TrainingLables is a list of what activity is which
#Now add on Text Activity Names
ActivityNames<-data.table(read.table("./UCI HAR Dataset/activity_labels.txt",col.names=c("Col1","Activity")),key="Col1")

#Read in PersonID for training data subject_train.txt  
PersonIDTrain<-data.table(read.table("./UCI HAR Dataset/train/subject_train.txt",col.names=c("Subject")))

#Merge on the activity labels and the personID (in order so can CBind)
TrainingData<-cbind(TrainingLables,TrainingData)
TrainingData<-cbind(PersonIDTrain,TrainingData)
TrainingData<-data.table(TrainingData,key="Col1")

#Put activity lables onto the training dataset 
TrainingData2<-merge(ActivityNames,TrainingData,by = "Col1", all.y=TRUE)

#Repeat Above for for Test Data

#Read in TestData and format
TestData<-data.table(read.table("./UCI HAR Dataset/test/X_test.txt",col.names=ColumnNamesList))
TestLables<-data.table(read.table("./UCI HAR Dataset/test/Y_test.txt"))
setnames(TestLables,"Col1")
TestLableValues<-unique(TestLables)
#TestLables is a list of what activity is which

#Read in PersonID for test data subject_test.txt  
PersonIDTest<-data.table(read.table("./UCI HAR Dataset/test/subject_test.txt",col.names=c("Subject")))

#Merge on the activity labels and the personID (in order so can CBind)
TestData<-cbind(TestLables,TestData)
TestData<-cbind(PersonIDTest,TestData)
TestData<-data.table(TestData,key="Col1")

#Put activity lables onto the test dataset 
TestData2<-merge(ActivityNames,TestData,by = "Col1", all.y=TRUE)

#Combine DataSets Together
AllData<-rbind(TestData2,TrainingData2)

#Keep Only mean and standard deviation for every var

#interested only in -std() and -mean() so text search for them.
#ColumnNamesList is missing the first 3 columns of "AllData" which we need
MeanSTD<-sort(unique(c(grep("-std()",ColumnNamesList, fixed = TRUE),grep("-mean()",ColumnNamesList, fixed = TRUE))))

#Dropping text activity in next step as aggregate gets upset with text vars
ColumnsToKeep<-c(1,3,MeanSTD+3)
AllDataTrimmed<-subset(AllData,select=ColumnsToKeep)

#Calculate means of remaing variables by ACtivity and Subject
attach(AllDataTrimmed)
aggdata <-aggregate(AllDataTrimmed, by=list(Col1,Subject), FUN=mean, na.rm=TRUE)
detach(AllDataTrimmed)

aggdata2<-subset(merge(ActivityNames,aggdata,by = "Col1", all.y=TRUE),select=c(-1,-3,-4))

#Rename to something sensible (i.e. remove "."s and capatalise things clearly)
NamesToChange<-names(aggdata2)
NamesToChange<-gsub("mean","Mean",NamesToChange)
NamesToChange<-gsub("std","StandDev",NamesToChange)
NamesToChange<-gsub("[.]","",NamesToChange)
NamesToChange<-gsub("X","DimX",NamesToChange)
NamesToChange<-gsub("Y","DimY",NamesToChange)
NamesToChange<-gsub("Z","DimZ",NamesToChange)

setnames(aggdata2,NamesToChange)


write.table(aggdata2, "./TidyData.txt", sep="\t")



