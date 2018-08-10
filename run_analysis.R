#Step 1: merge the training and test data sets

df_feature <- read.table('features.txt')

df1 <- read.table('X_train.txt')
df2 <- read.table('X_test.txt')
x_merged <- rbind(df1, df2)
names(x_merged) <- df_feature$V2

df3 <- read.table('y_train.txt')
df4 <- read.table('y_test.txt')
y_merged <- rbind(df3,df4)
names(y_merged) <- 'activity'

df5 <- read.table('subject_train.txt')
df6 <- read.table('subject_test.txt')
subject_merged <- rbind(df5, df6)
names(subject_merged) <- 'subject'

df_merged <- cbind(y_merged, subject_merged, x_merged)

#Step 2: extract measurements on the mean and standard deviation 

extract <- df_merged[ ,c('activity', 'subject', 
                      union(grep('std\\(', names(df_merged),
                      value = TRUE),
                      grep('mean\\(', names(df_merged),
                      value = TRUE)))]

#Step 3: use descriptive activity names

extract$activity <- gsub(1, 'WALKING', extract$activity)
extract$activity <- gsub(2, 'WALKING_UPSTAIRS', extract$activity)
extract$activity <- gsub(3, 'WALKING_DOWNSTAIRS', extract$activity)
extract$activity <- gsub(4, 'SITTING', extract$activity)
extract$activity <- gsub(5, 'STANDING', extract$activity)
extract$activity <- gsub(6, 'LAYING', extract$activity)

#Step 4: label the data set with descriptive variable names

names(extract) <- gsub('^t', 'time', names(extract))
names(extract) <- gsub('^f', 'frequency', names(extract))
names(extract) <- gsub('Acc', 'Acceleration', names(extract))
names(extract) <- gsub('Mag', 'Magnitude', names(extract))
names(extract) <- gsub('-X$', 'xaxis', names(extract))
names(extract) <- gsub('-Y$', 'yaxis', names(extract))
names(extract) <- gsub('-Z$', 'zaxis', names(extract))
names(extract) <- gsub('-mean\\(\\)', 'mean', names(extract))
names(extract) <- gsub('-std\\(\\)', 'std', names(extract))
names(extract) <- tolower(names(extract))

#Step 5

library(dplyr)
activity_subject <- group_by(extract, activity, subject)
df_tidy <- summarise_all(activity_subject, mean)

write.table(df_tidy, file = 'tidy.txt', row.name=FALSE)




