add2<-function(x,y){
  x+y
}

above10<-function(x){
  use<- x > 10
  x[use]
}

above<-function(x,n){
  use <- x >n 
  x[use]
}

make.power<-function(n){
  pow<-function(x){
    x^n
  }
  pow
}

columnmean <- function(y, removeNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i]<-mean(y[,i],na.rm = removeNA)
  }
  means               
}

lm<-function(x){x*x
}
