#crear un dataframe 
df <- data.frame(id = 1:4, 
                 nombres = c('ana', 'belen', 'carlos', 'daniel'),
                 notas = c(8.5,7,4,9.2))
df

#propiedades
class(df)
dim(df)
length(df)
ncol(df)
nrow(df)

#informacion 
names(df) #nombres de las columnas
head(df) #primeros valores del df
tail(df, n=2) #ver las ultimas dos filas
summary(df) #nos da la info del df 

#acceder a cada elemento 
df$id
df$nombres
df[[3]] #posiciones con doble corchete, empiezan en 1
df[1,] #FILA 1 todas las columnas poner ,
df[,2] #para ver la columna dos 
df[3,3]

#anadir nuevos elementos
df$edad <- c(20, 32, 28, 40) #anadir una columna 
df$aprobado <- c(TRUE, TRUE, FALSE) #error, no mismo tamano
df<-cbind(df, aprobado = c(TRUE, TRUE, FALSE, FALSE))

#eliminar elementos 
df$aprobado <- NULL 
df

#renombrar columnas
names(df)
names(df)[2] <- 'nombres y apellidos'

#coercion o convertibilidad de datos 
df_numeros <- data.frame(A = 1:10, B=11:20)
df_numeros
mat <- as.matrix(df_numeros)
mat
class(mat)
mat2 <- as.matrix(df)
mat2 #convierte. todo a caracteres para. que todo. sea del mismo tipo. 
df_numeros2 <- as.data.frame(mat)
class(df_numeros2)
