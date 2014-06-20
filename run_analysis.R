#############################
# run_Analysis.R            #
# written by Jet Goodson    #
# 18 June, 2014             #
#############################

#get any needed libraries
library(reshape2)


cat("Loading data.\n")

#get test data features
testData_X <- read.table(file="UCI HAR Dataset/test/X_test.txt",header=FALSE)
#get test data activity labels
testData_Y <- read.table(file="UCI HAR Dataset/test/y_test.txt",header=FALSE)
#get subject labels for test data
testData_Subject <- read.table(file="UCI HAR Dataset/test/subject_test.txt",header=FALSE)

#get training data features
trainData_X <- read.table(file="UCI HAR Dataset/train/X_train.txt")
#get training data activity labels
trainData_Y <- read.table(file="UCI HAR Dataset/train/y_train.txt",header=FALSE)
#get subject labels for training data
trainData_Subject <- read.table(file="UCI HAR Dataset/train/subject_train.txt",header=FALSE)


cat("Merging Data.\n")

#bind the three sub-datasets of the test and training data
testData_allFeatures <- cbind(testData_Subject,testData_Y, testData_X)
trainData_allFeatures <- cbind(trainData_Subject,trainData_Y, trainData_X)

#determine preliminary names for the columns of the prototype datasets
featureNames <- read.table(file="UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
colnames(featureNames) <- c("featureNumber","featureName")
#now apply them
colnames(testData_allFeatures) <- c("Subject","ActivityLabel",featureNames$featureName)
colnames(trainData_allFeatures) <- c("Subject","ActivityLabel",featureNames$featureName)

#now we merge the datasets
combinedData_allFeatures <- rbind(testData_allFeatures,trainData_allFeatures)


cat("Removing unwanted features of data.\n")

#I want to remove unwanted features to keep size down; first get all with mean or std
#in name then remove those with freq in name; then make vector and add activity label
desiredFeaturesFrame <- featureNames[grep("mean|std",featureNames$featureName),]
desiredFeaturesFrame <- desiredFeaturesFrame[!grepl("Freq",desiredFeaturesFrame$featureName),]
desiredFeatures <- c("Subject","ActivityLabel",desiredFeaturesFrame$featureName)

#now remove unwanted features
combinedData <- combinedData_allFeatures[,desiredFeatures]

#now we apply safer names to the combined dataset's columns; there are 68, so I won't manually set them
columnNames <- colnames(combinedData)
columnNames <- gsub("\\(\\)","",columnNames)
columnNames <- gsub("-","_",columnNames)
columnNames <- gsub(" ","",columnNames)
columnNames <- gsub("Mag","Magnitude",columnNames)
columnNames <- gsub("Acc","Accelerometer",columnNames)
columnNames <- gsub("Gyro","Gyroscope",columnNames)
columnNames <- gsub("fBody","FFT_Body",columnNames)
columnNames <- gsub("tBody","Body",columnNames)
columnNames <- gsub("tGravity","Gravity",columnNames)
columnNames <- gsub("std","StandardDeviation",columnNames)
colnames(combinedData) <- columnNames

#Now we make the ActivityLabel feature a factor using the activity_labels.txt file
activityLabel_dictionary <- read.table(file="UCI HAR Dataset/activity_labels.txt",header=FALSE)
combinedData$ActivityLabel <- factor(combinedData$ActivityLabel)
levels(combinedData$ActivityLabel) <- as.vector(activityLabel_dictionary$V2)

cat("Creating tidy dataset.\n")

#now lets make a tidy dataset
tidyData_prototype <- melt(combinedData,id=c("Subject","ActivityLabel"),measured.vars=desiredFeaturesFrame$featureNames)
tidyData_subjectActivityMeans <- dcast(tidyData_prototype, Subject + ActivityLabel ~ variable, median)
newColNames <- paste(colnames(tidyData_subjectActivityMeans)[3:ncol(tidyData_subjectActivityMeans)], rep("_MEAN",(ncol(tidyData_subjectActivityMeans)-2)),sep="")
colnames(tidyData_subjectActivityMeans) <- c("Subject", "ActivityLabel",newColNames)


cat("Saving datasets.\n")

#save the new datasets
write.table(tidyData_subjectActivityMeans, file="HumanActivitySmartphoneRecognition_tidyData.txt", sep=" ", row.names=FALSE, col.names=TRUE, qmethod="double")
write.table(combinedData,file="HumanActivitySmartphoneRecognition_cleanedData.txt", sep= " ", row.names=FALSE, col.names=TRUE,qmethod="double")
          

cat("Data cleaned and saved.\n")


