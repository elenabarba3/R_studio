#grafico de lineas
coste <- 1:15
precio <- coste*1.40 #40% margen

#plot, titulos y ejes
plot(coste,precio, type='l', 
     main ='relacion entre coste y precio',
     xlab='coste de producto',
     ylab='PVP') 

#para grafico puntos, cambiar l por p
plot(coste,precio, type='p', 
     main ='relacion entre coste y precio',
     xlab='coste de producto',
     ylab='PVP') 

#graficos de barras

vendedores <- c('juan', 'silvia', 'maria', 'pedro')
ventas <- c(10000, 15000, 8000, 20000)

barplot(ventas,  names.arg = vendedores)
#modificar
barplot(ventas,  names.arg = vendedores, main ='ventas por asesor',
        xlab= 'asesores',
        ylab = 'importe ventas',
        space = 3, #espacio entre barras
        width = 7, #ancho columnas
        )

#histogramas (datos continuos)
datos <- rnorm(2500)
hist(datos, main = 'histograma frecuencias', xlab = 'datos', ylab = 'frecuencias')

#SCATTERPLOTS 
x <- rnorm(100)
y <- 2* x +rnorm(100)
plot(x, y, main = 'scatterplot', xlab = 'x', ylab ='y')


