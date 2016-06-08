# Code Book

### Introduction

This document details the data collected and the variables observed in the course of the ['Human Activity Recognition Using Smartphones'](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) study, as made available through the UCI Machine Learning Repository. Additionally, this document explains the basic structure of the script 'run_analysis.R', and highlights the transformations it performs on the original UCI source data.


### Source Data and Variables

As indicated in the 'features_info.txt' file, a full list of the identifiers and measurements is found in the 'features.txt' file. For brevity (and for comparison to the "Transformed Data and Variables"), only those identifiers and measurements that are featured within the two tidy data sets created by 'run_analysis.R' are listed in their original forms here.

##### Identifiers
V1
V2

##### Observered Measurements
[1] tbodyAcc-mean()-X
[2] tbodyAcc-mean()-Y
[3] tbodyAcc-mean()-Z
[4] tbodyAcc-std()-X
[5] tbodyAcc-std()-Y
[6] tbodyAcc-std()-Z
[41] tGravityAcc-mean()-X
[42] tGravityAcc-mean()-Y
[43] tGravityAcc-mean()-Z
[44] tGravityAcc-std()-X
[45] tGravityAcc-std()-Y
[46] tGravityAcc-std()-Z
[81] tBodyAccJerk-mean()-X
[82] tBodyAccJerk-mean()-Y
[83] tBodyAccJerk-mean()-Z
[84] tBodyAccJerk-std()-X
[85] tBodyAccJerk-std()-Y
[86] tBodyAccJerk-std()-Z
[121] tBodyGyro-mean()-X
[122] tBodyGyro-mean()-Y
[123] tBodyGyro-mean()-Z
[124] tBodyGyro-std()-X
[125] tBodyGyro-std()-Y
[126] tBodyGyro-std()-Z
[161] tBodyGyroJerk-mean()-X
[162] tBodyGyroJerk-mean()-Y
[163] tBodyGyroJerk-mean()-Z
[164] tBodyGyroJerk-std()-X
[165] tBodyGyroJerk-std()-Y
[166] tBodyGyroJerk-std()-Z
[201] tBodyAccMag-mean()
[202] tBodyAccMag-std()
[214] tGravityAccMag-mean()
[215] tGravityAccMag-std()
[227] tBodyAccJerkMag-mean()
[228] tBodyAccJerkMag-std()
[240] tBodyGyroMag-mean()
[241] tBodyGyroMag-std()
[253] tBodyGyroJerkMag-mean()
[254] tBodyGyroJerkMag-std()
[266] fBodyAcc-mean()-X
[267] fBodyAcc-mean()-Y
[268] fBodyAcc-mean()-Z
[269] fBodyAcc-std()-X
[270] fBodyAcc-std()-Y
[271] fBodyAcc-std()-Z
[345] fBodyAccJerk-mean()-X
[346] fBodyAccJerk-mean()-Y
[347] fBodyAccJerk-mean()-Z
[348] fBodyAccJerk-std()-X
[349] fBodyAccJerk-std()-Y
[350] fBodyAccJerk-std()-Z
[424] fBodyGyro-mean()-X
[425] fBodyGyro-mean()-Y
[426] fBodyGyro-mean()-Z
[427] fBodyGyro-std()-X
[428] fBodyGyro-std()-Y
[429] fBodyGyro-std()-Z
[503] fBodyAccMag-mean()
[504] fBodyAccMag-std()
[516] fBodyBodyAccJerkMag-mean()
[517] fBodyBodyAccJerkMag-std()
[529] fBodyBodyGyroMag-mean()
[530] fBodyBodyGyroMag-std()
[542] fBodyBodyGyroJerkMag-mean()
[543] fBodyBodyGyroJerkMag-std()


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
