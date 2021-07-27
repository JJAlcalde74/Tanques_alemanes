poblacion <- 5000


numeros <- (1:poblacion)

muestras <- 100
tamaño <- 30

estimacion <- matrix(1:muestras)


for (i in 1:muestras)
{
  m<-sample(numeros,tamaño,replace=FALSE)
  maximo<-max(m)
  maximo
  estimacion[i]<-(((tamaño+1) / tamaño)*maximo) -1
  
}

mean(estimacion)
hist(estimacion)

t.test(estimacion,mu=poblacion)