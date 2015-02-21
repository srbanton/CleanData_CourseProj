# This file cleans up data from the Human Activity Recognition 
# dataset and computes the mean of experimental variables for 30 
# subjects across 6 performed activities. A tidy data file is output.

##Read in data files
ytrain <- read.table("y_train.txt",sep="")
xtrain <- read.table("x_train.txt",sep="")
ytest <- read.table("y_test.txt",sep="")
xtest <- read.table("x_test.txt",sep="")
subjtest <- read.table("subject_test.txt",sep="")
subjtrain <- read.table("subject_train.txt",sep="")
feat <- read.table("features.txt",sep="")

##Create one large data table
test <- cbind(subjtest,ytest,xtest)
train <- cbind(subjtrain,ytrain,xtrain)
dat <- rbind(test,train)

##Extract features that have "mean" or "std"
colnames(dat) <- c("Subject_ID","Activity",as.character(feat$V2))
dat <- dat[c(1,2,grep("mean|std",names(dat),value=FALSE))]

##Generate tidy data set
dat[,1] <- factor(dat[,1])
dat[,2] <- factor(dat[,2],levels=c(1,2,3,4,5,6), 
                   labels=c("Walking", "Walking Upstairs",
                            "Walking Downstairs", "Sitting",
                            "Standing", "Laying"))
library(dplyr)
grp <- group_by(dat,Subject_ID,Activity)
dat <- summarise_each(grp,funs(mean)) #Wide - 180R x 81C 
write.table(dat,"tidydata.txt", row.names=FALSE)