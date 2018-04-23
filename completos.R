directorio="C:/Users/Ariely/Desktop/R/specdata"
completos<-function(directorio,id=1:332){
  total<-c()
  for(i in id){
    a<-formatC(i,width=3,flag="0")
    b<-paste(a,"csv",sep=".")
    quitar<-na.omit(read.csv(b))
    fila<-nrow(quitar) 
    total<-c(total,fila)
  }
  
  data.frame(total)
}

completos(directorio,1:332)

