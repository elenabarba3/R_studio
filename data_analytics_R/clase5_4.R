#STRING para funciones de reconocimineto de patrones
install.packages('stringr')
library(stringr)

data (package = 'stringr')
head(sentences)
summary(sentences)
frutas <- c('pera', 'banana', 'kiwi', 'manzana', 'pera')

#determinar coincidencias
str_detect(sentences, 'sad') #vector mismo tamano quecadena caracteres
sum(str_detect(sentences, 'sad')) #para agruparlo y resumir 
str_count(sentences, 'sad')
str_which(frutas, 'pera') #nos dice la posicion donde aparece
str_locate(frutas, 'pera') #devuelve matriz para cada elemento y en que posicion empieza y termina

#subconjuntos
str_subset(sentences, 'sad') #nosdevuelve las que tienen esa palabra quebuscamos 
str_sub(frutas, 1,4) #en ese vector, coge de la posicion 1 a la 4 lo que haya (abreviar)

#manipular longitudes
str_length(frutas) #Longitud de cada palabra 

#modificar strings
str_sub(frutas [3], 1, -1) <- 'mango' #paracambiar uno por otro, 1 a -1 es para cambioar todo en posicion 3
frutas
str_replace(frutas, 'banana', 'melon')
frutas <- str_replace(frutas, 'zana', 'zanas')
frutas

#unir y separar strings
frutas_unidas <- str_c(frutas,collapse = ', ')
length(str_c(frutas,  collape = ', '))
str_unique(frutas) #solo los unicos
frutas_separadas <- str_split(frutas_unidas, ', ') #con cadenas unidas para separar en lista, indicar separador
class(frutas_separadas)
frutas_separadas

