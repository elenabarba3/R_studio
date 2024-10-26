install.packages('microbenchmark')
install.packages('profvis')

#perfilado 
library('profvis')
library(ggplot2)
profvis({
  data(diamonds) #cargar datos
  plot(diamonds$price, diamonds$carat)
  model = lm(price ~., data = diamonds)
}) 

#microbenchmark hace todo 100 veces y nos da una aproximacion decuanto tarda

#comparear dos aproximaciones al mismo problema. dos operaciones y queremos saber cual va nejor 
#hacer benchmark para ver cual es mas optima
mean1 <-  function(x) mean(x)
mean2 <- function(x) sum(x)/length(x)
x <- runif(10^5)

microbenchmark::microbenchmark(
  mean1(x),
  mean2(x)
)
# R (vectorización). en vez. de bucles (mas optimos)
resultados_r <- (1:5)^2
# R (con factor)
nombres_r <- factor(c("Juan", "María", "Pedro", "Ana"))
 
#eliminar lo que no usamos
rm(data)


