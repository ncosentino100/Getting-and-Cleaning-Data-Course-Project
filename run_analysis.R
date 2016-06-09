# load necessary packages
library(data.table)

# test to see if correct working directory is already set,
# (if necessary) download and unzip file and/or set UCI HAR Dataset as working 
# directory 

if(grepl("UCI HAR Dataset", getwd()) == TRUE){
        
} else if(!file.exists("UCI HAR Dataset")){
        fileUrl <- paste0("https://d396qusza40orc.cloudfront.net/",
                          "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
        download.file(fileUrl, destfile = "./UCI HAR Dataset.zip", 
                      method = "curl", mode = "wb")
        unzip("UCI HAR Dataset.zip")
        setwd("./UCI HAR Dataset")
} else {
        setwd("./UCI HAR Dataset")
}

# read data from files
features <- read.table("./features.txt", header = FALSE)
activityType <- read.table("./activity_labels.txt", header = FALSE)
subjectTrain <- read.table("./train/subject_train.txt", header = FALSE)
xTrain <- read.table("./train/x_train.txt", header = FALSE)
yTrain <- read.table("./train/y_train.txt", header = FALSE)
subjectTest <- read.table("./test/subject_test.txt", header = FALSE)
xTest <- read.table("./test/x_test.txt", header = FALSE)
yTest <- read.table("./test/y_test.txt", header = FALSE)

# Combine data into one dataset
xData <- rbind(xTrain, xTest)
yData <- rbind(yTrain, yTest)
subjectData <- rbind(subjectTrain, subjectTest)
combinedData <- cbind(subjectData, yData, xData)

# assign feature names to measurements in combinedData
featurenames <- as.character(features[, 2])
colnames <- c("subject", "activityID", featurenames)
colnames(combinedData) <- colnames

# filter data set by the columns that contain mean and standard deviation (std)
filteredcolumns <- grep("\\bmean\\b|\\bstd\\b|\\bsubject\\b|\\bactivityID\\b", 
                        colnames(combinedData), value = TRUE)
filteredData <- combinedData[, filteredcolumns]

# assign data set's activities descriptive names
colnames(activityType) <- c("activityID", "activity")
filteredData <- merge(filteredData, activityType, by = "activityID", 
                      all.x = TRUE)
filteredData <- filteredData[, names(filteredData) != "activityID" ]

# relabel the data set's variables with descriptive names 
names(filteredData) <- gsub("^t", "time", names(filteredData))
names(filteredData) <- gsub("^f", "frequency", names(filteredData))
names(filteredData) <- gsub("Acc", "accelerometer", names(filteredData))
names(filteredData) <- gsub("Gyro", "gyroscope", names(filteredData))
names(filteredData) <- gsub("Mag", "magnitude", names(filteredData))
names(filteredData) <- gsub("Body", "body", names(filteredData))
names(filteredData) <- gsub("bodybody", "body", names(filteredData))
names(filteredData) <- gsub("Jerk", "jerk", names(filteredData))
names(filteredData) <- gsub("Gravity", "gravity", names(filteredData))
names(filteredData) <- gsub("std", "standarddeviation", names(filteredData))

# create a second, independed tidy data set including the average of each
# variable for each activity and subject
filteredData <- filteredData[c(1, 68, 2:67)]
tidyData <- aggregate(filteredData, by = list(activity = filteredData$activity,
                                        subject = filteredData$subject), mean)
tidyData <- tidyData[c(1, 2, 5:70)]
write.table(tidyData, "variableaverages.txt", sep = "\t", row.names = FALSE)







