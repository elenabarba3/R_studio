#OPTIMIZACION DE CODIGO
library(readr)
library(ggplot2)
library(profvis)
library(dplyr)

profvis({
path <- 'path/nombre.csv'
datos <- read_csv(path)

resumen_diamantes <- datos %>% group_by(cut) %>%
  summarise(Media = mean(price))
resumen_diamantes

resultados <- list()
cortes <- unique(datos$cut)

for (i in 1:length(cortes)){
  seleccion <- datos [datos$cut == cortes[i],]
  media <- mean(seleccion$price)
  resultados[[i]] <- data.frame(Corte = cortes[i], Media = media)
}

resumen_diamonds <- do.call(rbind, resultados)

ggplot(resumen_diamonds, aes(x= Corte, y=Media)) + 
  geom_col()+
  geom_text(aes(label=Media))
})

#hace el perfilado y nos salta otra ventana, lo que mas. tarda es la lectura de los datos y 
#el bucle for
#objetivo: disminuir carga datos y el tiempo en el bucle for. 

#Microbenchmarking para comparar el rendimiento entre dos aproximaciones para un mismo problema 

microbenchmark::microbenchmark({
  datos <- read_csv(path)
  datos <- read.csv(path)
})

#la segunda opcion es mas rapida 

#probar systemtime 
system.time(read_csv(path))
system.time(read.csv(path))
#esto solo lo ejecuta una vez

#nedua d e preciuos de diamante por corte

#hacer microbenchmark de bucle 

microbenchmark::microbenchmark({
  resumen_diamantes <- datos %>% group_by(cut) %>%
    summarise(Media = mean(price))

resultados <- list()
cortes <- unique(datos$cut)

for (i in 1:length(cortes)){
  seleccion <- datos [datos$cut == cortes[i],]
  media <- mean(seleccion$price)
  resultados[[i]] <- data.frame(Corte = cortes[i], Media = media)
}

resumen_diamonds <- do.call(rbind, resultados)

})

