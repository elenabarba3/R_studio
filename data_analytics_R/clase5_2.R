#TIDYVERSE -  familia paquetes 
#install.packages('tidyverse')
#DPLYR para optimizar y simplificar operaciones como filtrado, ordenado y agrupado de datos

install.packages('dplyr')
library(dplyr)
df <-  read.csv('datos/diabeletes.csv')
head(df)

#crear df
diabeticos <- df %>% filter(Outcome == 1) #operador para enlazar operaciones y comparacion con dos =
#seleccionar
seleccionar <- diabeticos %>% select (Age,Glucose)
head(seleccionar,  n=10)
#anadir O MODIFICAR
edad <- seleccionar %>% mutate (AgeGroup = ifelse(Age >= 40, 'Mayor', 'Menor'))
head(edad,  n=4)

#ordenar
edad <- edad %>% arrange(desc(Age))
edad

#agrupar 
resumen <- edad %>% group_by(AgeGroup) %>% summarise(GlucoseAVG = mean(Glucose))
resumen

#PARA HACERLO TODO DE UNA
resumen2 <- df %>% filter(Outcome==1) %>%
                    select(Age,Glucose) %>%
                    mutate (AgeGroup = ifelse(Age >= 40, 'Mayor', 'Menor')) %>%
                    arrange(desc(Age))%>%
                    group_by(AgeGroup) %>% 
                    summarise(GlucoseAVG = mean(Glucose))