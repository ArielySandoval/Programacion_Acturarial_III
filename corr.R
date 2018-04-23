directorio="C:/Users/Ariely/Desktop/R/specdata"
corr<-function(directorio,horizonte=0){
  
  total<-c()
  for(i in 1:332){
    a<-formatC(i,width=3,flag="0")
    b<-paste(a,"csv",sep=".")
    quitar<-na.omit(read.csv(b))
    fila<-nrow(quitar) 
   
    
  }
}
