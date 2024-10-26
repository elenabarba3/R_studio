d <- diamonds
head(d)

#medidas de posicion
#media
mean(d$price)
#para excluir valores nulos y extremos:
mean(d$price, na.rm = TRUE, trim = 0.025)

meadian(d$price)

#moda, instalar paquete modeest

install.packages('modeest')
library (modeest)
mfv(d$price)
mfv(d$carat)

#tamano de la muestra 
length(d$price)

#frecuencias absolutas del corte del diamante (cut)
t <- table (d$cut)

#frecuencia relativa
prop.table(t)

#mas facil
round(pop.table(t)*100,2)


#cuantiles 
quantile (d$price, prob = c(0.25, 0.5, 0.75))

#medidas de DISPERSION 
#minimo
min(d$price)
#maximo 
max(d$price)
#rango 
range(d$price)
class(range(d$price)) #vector entero 
#varianza
var(d$price)
#SD
sd(d$price)

#forma de DISTRIBUCION. 
install.packages('psych')
library(psych)

#coeficiente simetria 
skew(d$price)
#kurtosis 
kurtosis (d$price)

#conjunto. de estadistica
summary(d$price)
#histograma
hist(d$price)
#barplot
barplot(table(d$cut), col='skyblue', ylab='frec', main ='frec de cortes')

#relaciones
plot(x=d$price, y =d$carat)
cor(d$price, d$carat)

