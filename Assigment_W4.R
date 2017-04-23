Assigment_W4 <- function() {
        library(plyr)
        library(dplyr)
        # Reads the features from features.txt and stores them in a vector
        Header_Features <- read.table("./UCI HAR Dataset/features.txt",header=FALSE)
        Header_Features_Vector <- Header_Features[,2]
        
        # Reads the activities from activity_labels.txt in a dataset and sets the names of the columns
        Activity_Label <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE,dec=".")
        colnames(Activity_Label) <- c("id","label")
        
        ###################
        ## Train dataset ##
        ###################
        
        # Reads the 561-feature vectors from X_train.txt in a dataframe
        X_train <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE,dec=".")
        colnames(X_train) <- c(as.character(Header_Features_Vector))
        # Ensures that the columns names are unique
        colnames(X_train) <- make.names(colnames(X_train),unique=TRUE)
        # Selects only the measurements on the mean and standard deviation for each measurement 
        X_train_meanStd <- select(X_train, matches("\\.mean\\.|\\.std\\."))
        
        # Reads the Activities IDs from y_train.txt in a data frame and sets the column name
        Activities_ID <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE,dec=".")
        colnames(Activities_ID) <- c("id")
        # Joins Activities_ID and Activity_Label by the variable "id"
        Activities <- plyr::join(Activities_ID,Activity_Label,by="id")
        # Adds the Activities labels as a new column on the left and sets its column name
        X_train_meanStd <- cbind(Activities$label,X_train_meanStd)
        colnames(X_train_meanStd)[1]="activity"
        
        # Reads the subjects IDs from subject_train.txt in a dataframe and sets the column name
        Subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE,dec=".")
        colnames(Subjects) <- c("subject_id")
        # Adds the subjects' IDs as a new column on the left
        X_train_meanStd <- cbind(Subjects,X_train_meanStd)
        
        ####################
        ##  test dataset  ##
        ####################
        
        # Reads the 561-feature vectors from X_test.txt in a dataframe
        X_test <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE,dec=".")
        colnames(X_test) <- c(as.character(Header_Features_Vector))
        # Ensures that the columns names are unique
        colnames(X_test) <- make.names(colnames(X_test),unique=TRUE)
        # Selects only the measurements on the mean and standard deviation for each measurement 
        X_test_meanStd <- select(X_test, matches("\\.mean\\.|\\.std\\."))
        
        # Reads the Activities IDs from y_test.txt in a data frame and sets the column name
        Activities_ID <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE,dec=".")
        colnames(Activities_ID) <- c("id")
        # Joins Activities_ID and Activity_Label by the variable "id"
        Activities <- plyr::join(Activities_ID,Activity_Label,by="id")
        # Adds the Activities labels as a new column on the left and sets its column name
        X_test_meanStd <- cbind(Activities$label,X_test_meanStd)
        colnames(X_test_meanStd)[1]="activity"
        
        # Reads the subjects' IDs from subject_test.txt in a dataframe and sets the column name
        Subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE,dec=".")
        colnames(Subjects) <- c("subject_id")
        # Adds the subjects IDs as a new column on the left
        X_test_meanStd <- cbind(Subjects,X_test_meanStd)
        
        ###############################
        ##  train and test datasets  ##
        ###############################
        
        # Adds the rows in the dataframe X_train_meanStd at the bottom of the dataframe X_test_meanStd
        test_and_train <- bind_rows(X_test_meanStd,X_train_meanStd)
        # Sorts the dataframe test_and_train by subject_id first and then by activity 
        test_and_train <- arrange(test_and_train,subject_id,activity)
        # Groups dataframe test_and_train by subject and activity
        test_and_train_grouped <- group_by(test_and_train,subject_id,activity)
        # Summarizes all the variables in test_and_train_grouped with their means and casts
        # the result to a dataframe
        Avg_Per_Act_And_Subject <- as.data.frame(dplyr::summarize_all(test_and_train_grouped,mean))
        # Adds the string "avg_" at the beginning of each of the variable names computed in the previous step 
        add_avg <- function(x){paste("avg_",x,sep="")}
        colnames(Avg_Per_Act_And_Subject)[3:ncol(Avg_Per_Act_And_Subject)] <- sapply(colnames(Avg_Per_Act_And_Subject)[3:ncol(Avg_Per_Act_And_Subject)],add_avg)
        # Replaces the string "..." by "_" and removes the remaining dots in the variables names
        rep_dots <- function(x){x<-sub("\\.\\.\\.","_",x);x<-gsub("\\.","",x)}
        colnames(Avg_Per_Act_And_Subject)[3:ncol(Avg_Per_Act_And_Subject)] <- sapply(colnames(Avg_Per_Act_And_Subject)[3:ncol(Avg_Per_Act_And_Subject)],rep_dots)
        # Replaces the strings "std" and "mean" by "_std" and "_mean" respectively
        rep_std_mean <- function(x){x<-sub("std","_std",x);x<-sub("mean","_mean",x)}
        colnames(Avg_Per_Act_And_Subject)[3:ncol(Avg_Per_Act_And_Subject)] <- sapply(colnames(Avg_Per_Act_And_Subject)[3:ncol(Avg_Per_Act_And_Subject)],rep_std_mean)
        
        # Writes the resulting dataset into myTidyDataset.txt
        write.table(Avg_Per_Act_And_Subject,"./myTidyDataset.txt",row.name=FALSE)
              
}
