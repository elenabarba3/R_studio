library(ggplot2)
#REGRESION LINEAL: relacion entre una variable dependiente en relacion a una o varias variables
#independientes 
#y = ax + b

?diamonds
#regresion lineal 
modelo <- lm(price~carat, data = diamonds)
summary(modelo)

ggplot(diamonds, aes(x=carat, y=price)) +
  geom_point() +
  geom_smooth(method = 'lm', color = 'red', se = FALSE)

