number*2
number<-5+2
number*2
a*2

times<-c(60, 40, 33, 15, 20, 55, 35)
times/60

mean(times)
sqrt(times)
range(times)
#This is a comment
times<30 #This is an inline comment
times==20
times!=20
times>20&times<50 #AND
times<20|times>50 #OR
which(times<30)
sum(times<30)
a<-all(times<30)

#Subsetting:
times[3] #only 3rd entry
times[-3] #everything except 3rd entry
times[c(2, 4)] #2nd, 4th entry
times[c(4, 2)] #4th, 2nd, returned in that order
times[1:5] #1st through 5th entries sequentially
times[3, 5] #error, 2D matrix
times[times<30] #all entries <30
times
times[times>50]<-50 #cap: replace entries >50 with 50
times[8]<-NA
times
mean(times, na.rm=TRUE)
?mean #shows documentation for function in Help window

mtcars
str(mtcars)
names(mtcars) #vector of column names
mtcars$mpg #extract numbers from 1 column
