# Code Book

### Introduction

This document details the data collected and the variables observed in the course of the ['Human Activity Recognition Using Smartphones'](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) study, as made available through the UCI Machine Learning Repository. Additionally, this document explains the basic structure of the script 'run_analysis.R', and highlights the transformations it performs on the original UCI source data.

### Source Data and Variables

As indicated in the 'features_info.txt' file, a full list of the identifiers and measurements is found in the 'features.txt' file. For brevity (and for comparison to the "Transformed Data and Variables"), only those identifiers and measurements that are featured within the two tidy data sets created by 'run_analysis.R' are listed in their original forms here.

##### Identifiers
V1
V2

##### Observered Measurements
tbodyAcc-mean()-X
tbodyAcc-mean()-Y
tbodyAcc-mean()-Z
tbodyAcc-std()-X
tbodyAcc-std()-Y
tbodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-X
fBodyGyro-mean()-X
fBodyGyro-mean()-X



### Basics of 'run_analysis.R'*

*Notice: run_analysis.R was created, and all data transformations were performed, on a 64-bit MacBook Pro running OS X 10.11.5 and R version 3.2.4. The data.table package utilized within the script is version 1.9.6


### Transformed Data and Variables

##### Identifiers
[1] "activity"                                                   
[2] "subject"      

##### Observerved Measurements
[3] "timebodyaccelerometer-mean()-X"                             
[4] "timebodyaccelerometer-mean()-Y"                             
[5] "timebodyaccelerometer-mean()-Z"                             
[6] "timebodyaccelerometer-standarddeviation()-X"                
[7] "timebodyaccelerometer-standarddeviation()-Y"                
[8] "timebodyaccelerometer-standarddeviation()-Z"                
[9] "timegravityaccelerometer-mean()-X"                          
[10] "timegravityaccelerometer-mean()-Y"                          
[11] "timegravityaccelerometer-mean()-Z"                          
[12] "timegravityaccelerometer-standarddeviation()-X"             
[13] "timegravityaccelerometer-standarddeviation()-Y"             
[14] "timegravityaccelerometer-standarddeviation()-Z"             
[15] "timebodyaccelerometerjerk-mean()-X"                         
[16] "timebodyaccelerometerjerk-mean()-Y"                         
[17] "timebodyaccelerometerjerk-mean()-Z"                         
[18] "timebodyaccelerometerjerk-standarddeviation()-X"            
[19] "timebodyaccelerometerjerk-standarddeviation()-Y"            
[20] "timebodyaccelerometerjerk-standarddeviation()-Z"            
[21] "timebodygyroscope-mean()-X"                                 
[22] "timebodygyroscope-mean()-Y"                                 
[23] "timebodygyroscope-mean()-Z"                                 
[24] "timebodygyroscope-standarddeviation()-X"                    
[25] "timebodygyroscope-standarddeviation()-Y"                    
[26] "timebodygyroscope-standarddeviation()-Z"                    
[27] "timebodygyroscopejerk-mean()-X"                             
[28] "timebodygyroscopejerk-mean()-Y"                             
[29] "timebodygyroscopejerk-mean()-Z"                             
[30] "timebodygyroscopejerk-standarddeviation()-X"                
[31] "timebodygyroscopejerk-standarddeviation()-Y"                
[32] "timebodygyroscopejerk-standarddeviation()-Z"                
[33] "timebodyaccelerometermagnitude-mean()"                      
[34] "timebodyaccelerometermagnitude-standarddeviation()"         
[35] "timegravityaccelerometermagnitude-mean()"                   
[36] "timegravityaccelerometermagnitude-standarddeviation()"      
[37] "timebodyaccelerometerjerkmagnitude-mean()"                  
[38] "timebodyaccelerometerjerkmagnitude-standarddeviation()"     
[39] "timebodygyroscopemagnitude-mean()"                          
[40] "timebodygyroscopemagnitude-standarddeviation()"             
[41] "timebodygyroscopejerkmagnitude-mean()"                      
[42] "timebodygyroscopejerkmagnitude-standarddeviation()"         
[43] "frequencybodyaccelerometer-mean()-X"                        
[44] "frequencybodyaccelerometer-mean()-Y"                        
[45] "frequencybodyaccelerometer-mean()-Z"                        
[46] "frequencybodyaccelerometer-standarddeviation()-X"           
[47] "frequencybodyaccelerometer-standarddeviation()-Y"           
[48] "frequencybodyaccelerometer-standarddeviation()-Z"           
[49] "frequencybodyaccelerometerjerk-mean()-X"                    
[50] "frequencybodyaccelerometerjerk-mean()-Y"                    
[51] "frequencybodyaccelerometerjerk-mean()-Z"                    
[52] "frequencybodyaccelerometerjerk-standarddeviation()-X"       
[53] "frequencybodyaccelerometerjerk-standarddeviation()-Y"       
[54] "frequencybodyaccelerometerjerk-standarddeviation()-Z"       
[55] "frequencybodygyroscope-mean()-X"                            
[56] "frequencybodygyroscope-mean()-Y"                            
[57] "frequencybodygyroscope-mean()-Z"                            
[58] "frequencybodygyroscope-standarddeviation()-X"               
[59] "frequencybodygyroscope-standarddeviation()-Y"               
[60] "frequencybodygyroscope-standarddeviation()-Z"               
[61] "frequencybodyaccelerometermagnitude-mean()"                 
[62] "frequencybodyaccelerometermagnitude-standarddeviation()"    
[63] "frequencybodyaccelerometerjerkmagnitude-mean()"             
[64] "frequencybodyaccelerometerjerkmagnitude-standarddeviation()"
[65] "frequencybodygyroscopemagnitude-mean()"                     
[66] "frequencybodygyroscopemagnitude-standarddeviation()"        
[67] "frequencybodygyroscopejerkmagnitude-mean()"                 
[68] "frequencybodygyroscopejerkmagnitude-standarddeviation()"
