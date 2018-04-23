#caso 1

#ARCHIVO POR ARCHIVO
clase<-read.csv("C:/Users/Ariely/Desktop/R/specdata/001.csv")
attach(clase) #para que pueda leer las variables de la clase
mean(sulfate,na.rm= T) #PROMEDIO SIN LOS VALORES NA

#TODOS LOS ARCHIVOS DE LA CARPETA
  directorio="C:/Users/Ariely/Desktop/R/specdata"
  
  mediacontaminante <- function(directorio , contaminante= "sulfate", id=1:322){    
    
    if (contaminante== "sulfate") { 
      columna= 2
    } else if(contaminante == "nitrate"){
      columna=3
    } 
    contador<-0
    suma<-0
    for (i in id){
      a<-formatC(i,width = 3,flag="0")
      b<-paste(a,"csv",sep=".")
      tab<-read.csv(b) #va cambiando el valor de lectura del archivo en el directorio 
      contador<-length(na.omit(tab[,columna]))+contador #contador que va sumando
      #el valor de las casillas no vacias
      suma<-sum(tab[,columna],na.rm=TRUE)+suma #acumula los valores de las casi-
      #llas no vacias
      
      
    }
    promedio<-suma/contador #sumatoria total / los elementos nos vacios
    promedio
  }
  
  mediacontaminante(directorio,"sulfate",1:332)#LLAMAMOS A LA FUNCIÓN
  
  