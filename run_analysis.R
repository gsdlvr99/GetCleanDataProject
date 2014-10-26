run_analysis <- function () {
      ## Read in the activity file containing the mapping of numeric activity 
      ## IDs to description
      activity_labels <- read.table("activity_labels.txt",header=FALSE,col.names=c("a_id","activity"))  
      
      ## Read in features file and extract the feature name into a character 
      ## vector to be used as the column names for each dataset
      col_info <- read.table("features.txt",header=FALSE,col.names=c("c_id","c_desc"))
      clist <- as.vector(col_info$c_desc)
      
      ## Read in test and training data files, assigning the names extracted 
      ## from the features file in the previous step, along with the activity
      ## and subject files
      test_data <- read.table("X_test.txt",header=FALSE,check.names=FALSE,col.names=clist)
      test_activity <- read.table("y_test.txt",header=FALSE,col.names="a_id")
      test_subject <- read.table("subject_test.txt",header=FALSE,col.names="subject")
      
      train_data <- read.table("X_train.txt",header=FALSE,check.names=FALSE,col.names=clist)
      train_activity <- read.table("y_train.txt",header=FALSE,col.names="a_id")
      train_subject <- read.table("subject_train.txt",header=FALSE,col.names="subject")
      
      ## Add the subject and activity IDs to each dataset
      test_data <- cbind(test_subject, test_activity,test_data)
      train_data <- cbind(train_subject, train_activity,train_data)
      
      ## Merge the test and training data sets into a single data set
      dataset <- rbind(test_data,train_data)
      
      ## Extract all columns with 'mean' or 'std' in their names along with
      ## the subject and activity columns, and convert the resulting data frame
      ## to a data table
      dataset <- select(dataset, subject, a_id, matches("mean.*\\(|std"))
      dataset <- data.table(dataset)
      
      ## Replace column names with more descriptive names and assign
      ## the new names to the data set. This primarily involves removing
      ## excess punctuation and expanding abbreviations
      namelist <- names(dataset)
      namelist <- str_replace_all(namelist,"^t","time")
      namelist <- str_replace_all(namelist, "^f","freq")
      namelist <- str_replace_all(namelist, ("\\(\\)|\\(\\)-"),"")
      namelist <- str_replace_all(namelist, "std","stdev")
      namelist <- str_replace_all(namelist, "Acc", "Acceleration")
      namelist <- str_replace_all(namelist, "Gyro", "Gyroscope")
      namelist <- str_replace_all(namelist, "Mag", "Magnitude")
      namelist <- str_replace_all(namelist, "-","_")
      namelist <- tolower(namelist)
      setnames(dataset, names(dataset),namelist)
      
      ## Add the descriptive activity labels to the dataset and remove the
      ## column containing the numeric activity id
      dataset <- join(dataset,activity_labels,by="a_id")
      dataset <- select(dataset, subject,activity,contains("mean|stdev"))
      
      ## Calculate means for all variables by subject and activity
      tidytbl <- group_by(dataset, subject, activity) %>%
            summarise_each(funs(mean))
      
      ## Update the variable names to reflect that these are means of their
      ## respective means and standard deviations
      namelist <- names(tidytbl)
      namelist <- str_replace_all(namelist,"^freq","mean_freq")
      namelist <- str_replace_all(namelist,"^time","mean_time")
      setnames(tidytbl,names(tidytbl),namelist)
      
      ## Write the tidy dataset out to a text file
      write.table(tidytbl,"tidytable.txt",row.names=FALSE)
}