#test t de student: comparar media de dos grupos 
data(package ='mlbench', PimaIndiansDiabetes2)
head(PimaIndiansDiabetes2)

t <- t.test(glucose~diabetes, data=PimaIndiansDiabetes2)
print(t)
#ANOVA 
data(package='ggplot2', diamonds)
anova <- aov(price~cut, data=diamonds)
print(summary(anova))

#chi cuadrado para relacion entre dos variables categoricas 
tabla_cont <- table(diamonds$cut, diamonds$color)
tabla_cont

chi_cuad <- chisq.test(tabla_cont)
chi_cuad

#Pearsons correlation, relacion lineal entre dos variables 
cor_test <- cor.test(PimaIndiansDiabetes2$glucose, PimaIndiansDiabetes2$mass)
print(cor_test)

#wilcoxon test: medianas de grupo que no cumplen normalidad
precio_antes <- diamonds$price[1:100]
precio_despues <- diamonds$price[101:200]
wilcoxon <- wilcox.test(precio_antes, precio_despues, paired =TRUE)
wilcoxon

