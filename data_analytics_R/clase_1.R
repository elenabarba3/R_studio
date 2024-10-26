a = 5.4
class(a) #para saber que tipo de numero es
a = 'hola mundo'
class(a). #reasigna valor a variable, es de tipado dinamico 
b = TRUE#case sensitive
class(b) 
c = NULL 
class(c)
is.character(a). #para saber si es. de ese tipo.

listado = c('M', 'M', 'H', 'M') #VECTOR, unidimensional, homogeneo (elementos del mismo tipo)
genero = factor(listado) #al factorizar, determinamos niveles para organizar datos,  etiquetarlos y saber cuantos hay de cada valor
genero #c para concatenate
genero = factor(listado, levels =c('H','M'), labels = c('Hombre', 'Mujer'))
genero
table(genero)