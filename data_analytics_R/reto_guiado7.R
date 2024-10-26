data(package = 'mlbench', PimaIndiansDiabetes2)
mean(PimaIndiansDiabetes2$glucose)
#si hay valores nulos, limpiar con na.rm
mean(PimaIndiansDiabetes2$glucose, na.rm=TRUE)
sd(PimaIndiansDiabetes2$glucose, na.rm =TRUE)

summary(PimaIndiansDiabetes2$glucose)
table(PimaIndiansDiabetes2$diabetes)
prop.table(table(PimaIndiansDiabetes2$diabetes))

summary(PimaIndiansDiabetes2)

hist(PimaIndiansDiabetes2$glucose)

#hay diferencias entre medias de glucosa en gente con y sin diabetes? t test

t_test <- t.test (glucose ~ diabetes, data=PimaIndiansDiabetes2)
print(t_test)

cor(PimaIndiansDiabetes2$glucose, PimaIndiansDiabetes2$pressure)
#da error, hay que limpiar con dplyr

datos <- PimaIndiansDiabetes2 %>% na.omit() #eliminar nulos 
cor(datos$glucose, datos$pressure)

#PARTE 2

library(readxl)
library(dplyr)
library(ggplot2)
raw <- read_excel ('datos/mtcars.xlsx', sheet = 'cars')
head(raw)
summary(raw)

clean <- raw %>% select (mpg, cyl, disp,  hp, wt, am) %>%
  mutate(am = factor(am, level = c(0,1), labels = c('automatico', 'manual')), cyl = as.factor(cyl))
summary(clean)

correlation <- cor(clean[,c('mpg', 'disp', 'hp', 'wt')])
correlation

pairs (clean[,c('mpg', 'disp', 'hp', 'wt')])

ggplot(data = clean, aes(x=am,  y = mpg))+
  geom_boxplot()+
  labs(title = 'relacion consumo transmision', x = 'tipo transmision', y = 'consumo en millas por glaon')

ggplot(data = clean, aes(x=cy,  y = mpg, fill = cyl))+
  geom_boxplot()+
  labs(title = 'relacion consumo cilindrada', x = 'numero cilindros', y = 'consumo en millas por glaon')


t <-  t.test(mpg~am, data= clean)
t

anova <- aov(mpg~cyl, data=clean)
summary(anova)

model <- lm(mpg~hp+disp+wt)
summary(model)


