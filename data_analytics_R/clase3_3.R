#lapply y sapply
 
# Crear una lista
mi_lista <- list(a = 1:3, b = 4:6, c = 7:9)

# Aplicar la función sum() a cada elemento de la lista
resultados <- lapply(mi_lista, sum)

# Imprimir resultados
print(resultados)

#aplicar una funcion anonima para elevar al cuadrado
al_cuadrado <- lapply(mi_lista, function(x) x^2)
al_cuadrado

#calcular suma de las columnas de un data frame 
df <- data.frame(a=c(1,2,3), b=c(4,5,6))
df
suma_col <- lapply(df, sum)
suma_col

#aplicar una funcion con multiples argumentos
estadisticos <- list( A=1:10, B= 50:80)
lapply (estadisticos,
       quantile,
       probs = c(0.25,0.5,0.75)
)

#LAPPLY VS SAPPLY
raices <- lapply(mi_lista, sqrt)
raices
class(raices)

raices2 <- sapply(c(4,9, 16), FUN= sqrt)
raices2 <- sapply(mi_lista, sqrt)
raices2
class(raices2)


