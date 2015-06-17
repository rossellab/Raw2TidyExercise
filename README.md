# Raw2TidyExercise
This is an exercise in tidying up raw data, made for the Getting and Cleaning Data course of Coursera

The files in this repository include:  
* a script with the commands I used to run my analysis in R, run_analysis.R;  
* this README.md file;  
* and a code book with an explanation of the variables, code_book.md  

### Here follows an explanation of the script in run_analysis.R
1. The first step is to download the data from their original location (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) which was given to us in the course material. I have downloaded the files on Jun 10th 2015, at 12:53:57.

2. Then the script unzips the files inside the working directory, this automatically creates the subdirectory "UCI HAR Dataset" and all the files with the data and information are stored inside this subdirectory.

3. The relevant data are read into R dataframe structures:
* subjectTest contains the subject number for the Test subset
* xTest contains the measurements in the Test subset, for each subject and activities
* yTest contains the activity number for each observation in the Test subset
* subjectTrain contains the subject number for the Train subset
* xTrain contains the measurements in the Train subset, for each subject and activities
* yTrain contains the activity number for each observation in the Train subset

4. Using the dplyr library the script:
* assembles two dataframes that for each subset link each subject and activity to the corresponding measurement (I have assumed here that row numbers are the link, as there was no any other link specified)
* merges the two dataframes into one dataframe containing all the Test and Train measurements
* selects a subset of the columns containing subject and activity labels and further only those measurements computed as mean values or standard deviations, as required in the assignment (here I live out the meanFreq() measurements because in my understanding this is not a common mean value but rather a frequency measurement)


5. Every variable gets labeled with a human-readable name. I have chosen here to go for long and easy to read names rather than short names that more easily fit into one window. This for two reasons:
* the number of variables is so high that they will never fit in one window anyway
* although a bit more annoying to type in if you have to further analyse the data, I personally find the long names  easier to scan through when you are looking for one specific variable        
  
The only abbreviation I allow for is "Std" for "Standard deviation", as this is a very well known one and widely used by data scientists.

6. Activity numbers in the "activity" column are substituted with descriptive activity labels, as required in the assignment

7. Finally the script summarises the data reporting average values of each measurement, grouped by subject and activity. So each row in the resulting dataframe reports the average value of each measurement for one subject doing one activity. Each subject does 6 activities and we have 30 subjects so in total we have 180 rows, and for each row we have 66 average measurements, plus the subject and the activity labels, thus a total of 68 columns.
