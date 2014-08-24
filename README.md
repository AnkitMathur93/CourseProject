##Description of run_analysis.R script
=============================================================
#####The script returns the tidy data set that is required in part 5 of the problem and also creates a "tidyDataset.txt" file in the current directory.
#####This text file contains the tidy dataset created in R_studio version 3.1.1 and  saved using write.table function with row.names =FALSE.
#####To load this dataset in R, following command is to be used:
######tidy<-read.table("tidyDataset.txt",header=TRUE)

==============================================================

#####The script run_analysis.R contains following Functions:-

######run_analysis<-function()

This function is the main function in which all other functions are called to produce the desired dataset.The following are the objects defined in this Function.

mergeData:- It is data set produced by combining the train and test dataset respectively.It has 10299 records of 561 variables.

colWithMean:- It is a vector which stores the indices of the variables which are mean of the various measurements.

colWithStd:- It is a vector which stores the indices of the variables which are Standard Deviation of the various measurements.

MeanStdData:- It is the Dataset which include variables of only the measurements on the mean and standard deviation for each measurement.It has 10299 records of 69 variables.

colnames:- It is character vector which stores all the column labels of MeanStdData dataset.

######getMergeData<-function()

This function reads the .txt files from the directory and load it in "data.frame" objects using read.table() function.It also merge the train and test dataset and returns the merge dataset.
The following are the objects defined in this Function.

train_data:- It is a "data.frame" of train data.It has 7352 records of 561 variables.

test_data:- It is a "data.frame" of test data.It has 2947 records of 561 variables.

data:- It is the dataset formed by merging train and test dataset respectively using rbind() function.

######getMeanStdData<-function(X,colWithMean,colWithStd)
		
This function returns the extracts only the measurements on the mean and standard deviation for each measurement using the arguments "colWithMean" and "colWithStd".

######getSubject_Activity<-function(X)

This function labels the MeanStdData dataset by adding 3 more columns to the dataset - "Subject_ID","Activity_Id" and "Activity_Labels".The following are the objects defined in this Function.
 
alab:- It is a Character Vector of the various Activity names.It is read  from the file "actvity_labels.txt"

train_subject:- It is the vector of the subject id of the data in "train.txt".

trainActivity_Id:- It is the vector of the Activity labels of the data in "train.txt".

test_subject:- It is the vector of the subject id of the data in "test.txt".

testActivity_Id:- It is the vector of the Activity labels of the data in "test.txt".

