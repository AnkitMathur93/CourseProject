#This function is the main function in which all other functions are called to 
#produce the desired dataset.

run_analysis<-function()
{
    mergeData<-getMergeData()
    colWithMean<-c(1:3,41:43,81:83,121:123,161:163,201,214,227,240,253,266:268,
                   345:347,424:426,503,516,529,542)
    colWithStd<-std<-c(4:6,44:46,84:86,124:126,164:166,202,215,228,241,254,
                       269:271,348:350,427:429,504,517,530,543)
   
    MeanStdData<-getMeanStdData(mergeData,colWithMean,colWithStd)
    MeanStdData<-getSubject_Activity(MeanStdData)
    colnames<-c("Subject_Id","Activity_Id","Activity_Label","tBodyAccelerationMean_Xaxis","tBodyAccelerationMean_Yaxis","tBodyAccelerationMean_Zaxis","tGravityAccelerationMean_Xaxis","tGravityAccelerationMean_Yaxis","tGravityAccelerationMean_Zaxis","tBodyAccelerationJerkMean_Xaxis","tBodyAccelerationJerkMean_Yaxis","tBodyAccelerationJerkMean_Zaxis","tBodyGyroMean_Xaxis","tBodyGyroMean_Yaxis",
                "tBodyGyroMean_Zaxis","tBodyGyroJerkMean_Xaxis","tBodyGyroJerkMean_Yaxis","tBodyGyroJerkMean_Zaxis","tBodyAccelerationMagMean","tGravityAccelerationMagMean","tBodyAccelerationJerkMagMean","tBodyGyroMagMean","tBodyGyroJerkMagMean","fBodyAccelerationMean_Xaxis","fBodyAccelerationMean_Yaxis","fBodyAccelerationMean_Zaxis","fBodyAccelerationJerkMean_Xaxis",
                "fBodyAccelerationJerkMean_Yaxis","fBodyAccelerationJerkMean_Zaxis","fBodyGyroMean_Xaxis","fBodyGyroMean_Yaxis","fBodyGyroMean_Zaxis","fBodyAccelerationMagMean","fBodyAccelerationJerkMagMean","fBodyGyroMagMean","fBodyGyroJerkMagMean","tBodyAccelerationStd_Xaxis","tBodyAccelerationStd_Yaxis","tBodyAccelerationStd_Zaxis","tGravityAccelerationStd_Xaxis","tGravityAccelerationStd_Yaxis","tGravityAccelerationStd_Zaxis","tBodyAccelerationJerkStd_Xaxis","tBodyAccelerationJerkStd_Yaxis","tBodyAccelerationJerkStd_Zaxis","tBodyGyroStd_Xaxis","tBodyGyroStd_Yaxis",
                "tBodyGyroStd_Zaxis","tBodyGyroJerkStd_Xaxis","tBodyGyroJerkStd_Yaxis","tBodyGyroJerkStd_Zaxis","tBodyAccelerationMagStd","tGravityAccelerationMagStd","tBodyAccelerationJerkMagStd","tBodyGyroMagStd","tBodyGyroJerkMagStd","fBodyAccelerationStd_Xaxis","fBodyAccelerationStd_Yaxis","fBodyAccelerationStd_Zaxis","fBodyAccelerationJerkStd_Xaxis","fBodyAccelerationJerkStd_Yaxis","fBodyAccelerationJerkStd_Zaxis","fBodyGyroStd_Xaxis","fBodyGyroStd_Yaxis","fBodyGyroStd_Zaxis","fBodyAccelerationMagStd","fBodyAccelerationJerkMagStd","fBodyGyroMagStd","fBodyGyroJerkMagStd")
    names(MeanStdData)<-colnames
    tidydata(MeanStdData)
}


#This function reads the .txt files from the directory and load it 
#in "data.frame" objects using read.table() function.It also merge the 
#train and test dataset and returns the merge dataset.

getMergeData<-function()
{
    setwd("train")
    train_data<-read.table("X_train.txt")
    setwd("../test")
    test_data<-read.table("X_test.txt")
    data<-rbind(train_data,test_data)
    setwd("../")
    data
    
    
}

#This function returns the extracts only the measurements on the 
#mean and standard deviation for each measurement using the 
#arguments "colWithMean" and "colWithStd".


getMeanStdData<-function(X,colWithMean,colWithStd)
{
    X<-X[,c(colWithMean,colWithStd)]
    X
    
    
}


#This function labels the MeanStdData dataset by adding 3 more columns 
#to the dataset - "Subject_ID","Activity_Id" and "Activity_Labels"

getSubject_Activity<-function(X)
{
    alab<-as.character((read.table("activity_labels.txt"))[[2]])
    setwd("train")
    train_subject<-(read.table("subject_train.txt")[[1]])
    trainActivity_Id<-(read.table("y_train.txt"))[[1]]
    setwd("../test")
    test_subject<-(read.table("subject_test.txt")[[1]])
    testActivity_Id<-(read.table("y_test.txt"))[[1]]
    X<-data.frame(Subject_Id=c(train_subject,test_subject),
                  Activity_Id=c(trainActivity_Id,testActivity_Id),
                  Activity_Labels=alab[c(trainActivity_Id,testActivity_Id)],X)
    setwd("../")
    X
    
}

#This is the function which returns the required independent tidy data set 
#with the average of each variable for each activity and each subject.
#It also creates the "tidyDataset.txt" file with write.table function

tidydata<-function(X)
{
    Subject_Id<-as.integer(as.character(sapply(split(X[[1]],list(X[[2]],X[[1]])),labels)))
    Activity_Labels<-as.character(sapply(split(X[[3]],list(X[[2]],X[[1]])),labels))
    tidy<-data.frame(Subject_Id,Activity_Labels)
    for(i in 4:69)
    {
        tidy<-data.frame(tidy, sapply(split(X[[i]],list(X[[2]],X[[1]])),mean))
    }
    names(tidy)=names(X)[-2]
    
    write.table(tidy,"tidydataset.txt",col.names=TRUE,row.names=FALSE,sep=" ")
    tidy<-read.table("tidydataset.txt",header=TRUE)
    
}
#This Function is used to extract first element of the object ele passed 
#as argument.It used in sapply() function to extract first element of the 
#list elements.

labels<-function(ele)
    ele[1]

