#vectores
mi_vector <- c('ano','mes','semana')
mi_vector <-c('ano', 2023) #convierte 2023 en string
mi_vector

#matrices son bidimensionales (col y fila)
mi_matriz <- matrix(1:20)
mi_matriz
mi_matriz <- matrix(1:20, ncol = 4) #por defecto organiza por columnas
mi_matriz

#ARRAY es matriz multidimensional, datos homogeneos
#data frames, para construirlos a traves de distintos vectores
data.frame(mi_matriz) #asigna nombres a cada una de las columnas como si fuese una tabla
id <- 1:3
nombres <- c('ana', 'bea', 'elio')
df <- data.frame('id' = id, 'nombres' = nombres) #Los nombres que les. doy a las columnas de los datos 
df

#lista (unidiensional, lo evalua todo como un elemento en el caso de matriz)
mi_lista <-  list('vector' = mi_vector,  'matriz' = mi_matriz, 'ano' = 2023)
mi_lista
length(mi_lista) #va a tener 3 elementos,la matriz cuenta como uno