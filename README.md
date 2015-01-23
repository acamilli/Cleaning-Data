# Cleaning-Data
Repository for the Coursera "Getting and Cleaning Data"

run_analysis.R generate a file named run_analysis_table.txt which is a file of character elements.
When this file is read back in R with the read.table command all the fields become numeric, except for the column "activity" which become of the factor type.

If the last block of the run_analysis.R was ommited then all elements of run_analysis_table.txt were of type numeric.

So the choice of generating a clearer (tidier) a character type comes from  

As for the names of the variables (column names) in the run_analysis_table.txt table the names provided in the features.txt file were taken because it seemed to me they were completely self-explanatory (although with this criterion some nomination rules for tables could be broken). For example, tBodyAcc-mean()-X has already in it all relevant information: mean of time domain measure of the X axis body acceleration.

run_analysis.R is to be run in the same directory as were the Samsung dataset was inserted because inside the script it takes relative paths to the data. 
