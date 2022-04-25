data<-read.csv("./StudentList.csv")
set.seed(144)
length<-length(data$Last.Name)
num.groups<-length/4
var<-rep(1:num.groups, each=4)
randomized<-sample(var)

if(num.groups>(length(var)/4)){
  diff<-num.groups-(length(var)/4)
  value<-diff*4
  extras<-sample(var, size=value)
  location1<-length(var)+1
  location2<-length(var)+value
  randomized[location1:location2]<-extras
  }

data$Group.Number<-randomized

write.csv(data, "./GroupAssignments.csv")
