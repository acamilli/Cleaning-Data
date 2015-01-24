# Cleaning-Data
Repository for the Coursera "Getting and Cleaning Data"

<<<<<<< HEAD
- run_analysis.R generate a file named run_analysis_table.txt which is a file of character elements.
When this file is read back in R with the read.table command all the fields become numeric, except for the column "activity" which become of the factor type.
run_analysis.R is to be run in the same directory as were the Samsung dataset was inserted because inside the script it takes relative paths to the data. 


- How run_analysis.R works
First it positions at the correct directory then it reads train and test data files 
The program builds a great matrix adding up the X_test and the X_train data with rbind.
Then columns with the subject and the activity are added to the matrix.
And finally the columns are renamed.
The names of the variables (column names) in the run_analysis_table.txt table were the same names provided
in the features.txt file. This choice was because it seemed to me they were completely self-explanatory
(although with this criterion some nomination rules for tables could be broken). For example, the name tBodyAcc-mean()-X has already
in it all relevant information to describe de variable: it is the mean of time domain measure of the X axis body acceleration.
So we read the variable names in vectors to be used as colunm names in the table.

Extracting the mean and standard deviation is straight forward with the function sapply. 
Then the new table was written for the means of each individuals, replacing the numeric values of the activity names with the
corresponding literal description, to get the table clearer. 
  
- Code Book (extracted from features_info file)

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
=======
run_analysis.R generate a file named run_analysis_table.txt which is a file of character elements.
When this file is read back in R with the read.table command all the fields become numeric, except for the column "activity" which become of the factor type.

If the last block of the run_analysis.R was ommited then all elements of run_analysis_table.txt were of type numeric.

So the choice of generating a clearer (tidier) a character type comes from  

As for the names of the variables (column names) in the run_analysis_table.txt table the names provided in the features.txt file were taken because it seemed to me they were completely self-explanatory (although with this criterion some nomination rules for tables could be broken). For example, tBodyAcc-mean()-X has already in it all relevant information: mean of time domain measure of the X axis body acceleration.

run_analysis.R is to be run in the same directory as were the Samsung dataset was inserted because inside the script it takes relative paths to the data. 
>>>>>>> 19c54e52758bb3f4f22387e56ee4b68a48db3ae3
