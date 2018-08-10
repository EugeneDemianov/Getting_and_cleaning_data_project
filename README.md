# Getting_and_cleaning_data_project
Created within Data Science specialization on Coursera


Script: 
- run_analysis.R

Input datasets: 
- features.txt : names of features
- subject_test.txt, subject_test.txt: subjects
- X_test.txt, X_train.txt: measurements
- y_test.txt, y_train.txt: labels/activities

Output dataset: 
- tidy.txt: please read this file with 'read.table('tidy.txt', header = TRUE)' command

Key elements of the script:

1. Reading all the source data sets and merging them into the single data set ('df_merged'):
  - read.table() for reading the source data sets;
  - rbind() for merging train and test X, y, and subject data sets;
  - renaming the variables in y and subject data sets;
  - cbind() to merge y, subject, and X data sets.
     
2. Extracting measurement variables with 'mean()' or 'std()' wording with help of grep() and union().

3. Renaming the values of the 'activity' variable with gsub().

 - 1 to 'WALKING'
 - 2 to 'WALKING_UPSTAIRS'
 - 3 to 'WALKING_DOWNSTAIRS'
 - 4 to 'SITTING'
 - 5 to 'STANDING'
 - 6 to 'LAYING'

4. Renaming and lowering the measurement variables with help of gsub() tolower():

 - '^t' to 'time'
 - '^f' to 'frequency'
 - 'Acc' to 'Acceleration'
 - 'Mag' to 'Magnitude'
 - '-X$' to 'xaxis'
 - '-Y$' to 'yaxis'
 - '-Z$' to 'zaxis'
 - '-mean\\(\\)' to 'mean'
 - '-std\\(\\)' to 'std'

5. Grouping the data by the 'activity' and 'subject' variables and extracting it into the 'df_tidy' with help of dplyr package, group_by(), summarise_each() with mean values of each measurement variable.

6. Saving the 'df_tidy' as a txt file with help of write.table().
