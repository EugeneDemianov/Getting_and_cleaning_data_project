Script: 

- run_analysis.R

Input datasets: 

- features.txt : names of features
- subject_test.txt, subject_test.txt: subjects
- X_test.txt, X_train.txt: measurements
- y_test.txt, y_train.txt: labels/activities

Output dataset: 

- tidy.txt: please read this file with 'read.table('tidy.txt', header = TRUE)' command

Study design:

Data transformation was performed in several steps. 

Step#1: all data sources are merged to the single data set keeping into account train/test order both for X, y and subject data sets. Variables in X data sets were named according to the features.txt.

Step#2: all variables with 'mean()' or 'std()' wording were selected and extracted to a new data set together with 'activity' and 'subject' variables.

Step#3: all values in the 'activity' variable were renamed in order to make them more descriptive.  

Step#4: all measurement variables were renamed in order to make them more descriptive.

Step#5: the data was grouped by the 'activity' and 'subject' variables and summarized using the mean() function for all measurement variables. Final result was assigned to the 'tidy' data set and written into the 'tidy.txt' file.

Code book:

There are 180 observations and 68 variables in the tidy data set, including:

 [1] "activity"                                      
 [2] "subject"                                       
 [3] "timebodyaccelerationstdxaxis"                  
 [4] "timebodyaccelerationstdyaxis"                  
 [5] "timebodyaccelerationstdzaxis"                  
 [6] "timegravityaccelerationstdxaxis"               
 [7] "timegravityaccelerationstdyaxis"               
 [8] "timegravityaccelerationstdzaxis"               
 [9] "timebodyaccelerationjerkstdxaxis"              
[10] "timebodyaccelerationjerkstdyaxis"              
[11] "timebodyaccelerationjerkstdzaxis"              
[12] "timebodygyrostdxaxis"                          
[13] "timebodygyrostdyaxis"                          
[14] "timebodygyrostdzaxis"                          
[15] "timebodygyrojerkstdxaxis"                      
[16] "timebodygyrojerkstdyaxis"                      
[17] "timebodygyrojerkstdzaxis"                      
[18] "timebodyaccelerationmagnitudestd"              
[19] "timegravityaccelerationmagnitudestd"           
[20] "timebodyaccelerationjerkmagnitudestd"          
[21] "timebodygyromagnitudestd"                      
[22] "timebodygyrojerkmagnitudestd"                  
[23] "frequencybodyaccelerationstdxaxis"             
[24] "frequencybodyaccelerationstdyaxis"             
[25] "frequencybodyaccelerationstdzaxis"             
[26] "frequencybodyaccelerationjerkstdxaxis"         
[27] "frequencybodyaccelerationjerkstdyaxis"         
[28] "frequencybodyaccelerationjerkstdzaxis"         
[29] "frequencybodygyrostdxaxis"                     
[30] "frequencybodygyrostdyaxis"                     
[31] "frequencybodygyrostdzaxis"                     
[32] "frequencybodyaccelerationmagnitudestd"         
[33] "frequencybodybodyaccelerationjerkmagnitudestd" 
[34] "frequencybodybodygyromagnitudestd"             
[35] "frequencybodybodygyrojerkmagnitudestd"         
[36] "timebodyaccelerationmeanxaxis"                 
[37] "timebodyaccelerationmeanyaxis"                 
[38] "timebodyaccelerationmeanzaxis"                 
[39] "timegravityaccelerationmeanxaxis"              
[40] "timegravityaccelerationmeanyaxis"              
[41] "timegravityaccelerationmeanzaxis"              
[42] "timebodyaccelerationjerkmeanxaxis"             
[43] "timebodyaccelerationjerkmeanyaxis"             
[44] "timebodyaccelerationjerkmeanzaxis"             
[45] "timebodygyromeanxaxis"                         
[46] "timebodygyromeanyaxis"                         
[47] "timebodygyromeanzaxis"                         
[48] "timebodygyrojerkmeanxaxis"                     
[49] "timebodygyrojerkmeanyaxis"                     
[50] "timebodygyrojerkmeanzaxis"                     
[51] "timebodyaccelerationmagnitudemean"             
[52] "timegravityaccelerationmagnitudemean"          
[53] "timebodyaccelerationjerkmagnitudemean"         
[54] "timebodygyromagnitudemean"                     
[55] "timebodygyrojerkmagnitudemean"                 
[56] "frequencybodyaccelerationmeanxaxis"            
[57] "frequencybodyaccelerationmeanyaxis"            
[58] "frequencybodyaccelerationmeanzaxis"            
[59] "frequencybodyaccelerationjerkmeanxaxis"        
[60] "frequencybodyaccelerationjerkmeanyaxis"        
[61] "frequencybodyaccelerationjerkmeanzaxis"        
[62] "frequencybodygyromeanxaxis"                    
[63] "frequencybodygyromeanyaxis"                    
[64] "frequencybodygyromeanzaxis"                    
[65] "frequencybodyaccelerationmagnitudemean"        
[66] "frequencybodybodyaccelerationjerkmagnitudemean"
[67] "frequencybodybodygyromagnitudemean"            
[68] "frequencybodybodygyrojerkmagnitudemean"    