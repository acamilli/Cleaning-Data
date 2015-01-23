setwd("F:/Coursera Cleaning Data/UCI HAR Dataset")
features<-read.table("./features.txt")
activities<-read.table("./activity_labels.txt")

setwd("./test")
subject_test<-read.table("./subject_test.txt")
X_test<-read.table("./X_test.txt")
y_test<-read.table("./y_test.txt")

setwd("../train")
subject_train<-read.table("./subject_train.txt")
X_train<-read.table("./X_train.txt")
y_train<-read.table("./y_train.txt")

#labeling data set
feature_names<-as.character(features$V2[1:nrow(features)])
activity_names<-as.character(activities$V2[1:nrow(activities)])
colnames(X_test)<-feature_names
colnames(X_train)<-feature_names
colnames(subject_test)<-"subject"
colnames(subject_train)<-"subject"
colnames(y_test)<-"activity"
colnames(y_train)<-"activity"

X_train<-cbind(y_train,X_train)
X_train<-cbind(subject_train,X_train)
X_test<-cbind(y_test,X_test)
X_test<-cbind(subject_test,X_test)

data<-rbind(X_train, X_test)

# extracting the mean and standard deviation 
ncols<-ncol(data)
mean<-sapply(data[,3:ncols],mean)
std<-sapply(data[,3:ncols],sd)
mean_std<-rbind(mean,std)

#generating report with individual mean data
ids<-seq(1:30)
report<-c()
for (j in ids) {
  for (i in activities$V1) {
    id_act<-data$activity==i&data$subject==j
    report<-rbind(sapply(data[id_act,], mean), report)
  }
}



