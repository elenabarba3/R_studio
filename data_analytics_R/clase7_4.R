library(ggplot2)
library(dplyr)

#obtener datos 
data("PimaIndiansDiabetes", package= 'mlbench')
head(PimaIndiansDiabetes2)

#preparar. datos 
diabetes <- na.omit(PimaIndiansDiabetes2) #quitar valores nulos NA 
rm(PimaIndiansDiabetes2)
#crear modelo de regresion logistica multiple (simple seria con un solo parametro) 
modelo <- glm (diabetes ~ ., data = diabetes, family = 'binomial') #el punto indica en funcion del resto

#analizar el modelo 
summary(modelo)

#representar el modelo 
diabetes <- diabetes %>% mutate(probabilidad = ifelse(diabetes == 'pos', 1, 0)) 
#hacemos esto proque para el modelo la y tiene que estar entre 1 y 0

ggplot(diabetes, aes(x=glucose, y=probabilidad)) +
  geom_point()+
  geom_smooth(method='glm',  method.args = list(family='binomial'))

#realizar predicciones 
nuevos_datos <- data.frame(glucose =c(80,120,230,90, 60))
probs <- predict(modelo,  nuevos_datos, type='response')
probs *100