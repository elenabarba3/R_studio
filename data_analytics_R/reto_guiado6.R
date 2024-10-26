library(ggplot2)
install.packages("ggplot2")
library(mlbench)
library(stringr)
library(dplyr)

?mpg

head(mpg, n=5)

#histograma
ggplot(mpg, aes(x=cyl)) +
  geom_histogram(binwindth = 2, color = 'red', fill='blue') + # binwidth ancho de columnas
  labs (title = 'histograma de coches por cilindrada',
        x= 'cilindros',
        y ='numero de coches')
#grafico barras 
ggplot(mpg, aes(x=class)). +
  geom_bar(aes(fill = manufacturer))+
  labs (title = 'distribucion. de coches por clase',
        x= 'clase',
        y ='numero de coches')
  theme(panel.background = element_blank())+
  theme(plot.title = element_text(color='red'))
  theme(legend.position = 'none')

#boxplot
  mpg$trans <- mpg$trans %>% str_sub(1, -5)
ggplot(mpg, aes(x=trans, y=cty))+
  geom_boxplot(aes(color=trans))+
  labs(title='boxplot consumo por transmision',
       x='transmision',
       y='consumo urbano')

#dispersion
ggplot(mpg, aes(x=cty, y=hwy))+
  geom_point(aes(color=trans, size=cyl))

#facetado
ggplot(mpg, aes(x=cty, y=hwy))+
  geom_point(aes(color=trans, size=cyl))
  facet_wrap(~class) #separa en diferentes graficos segun la clase que especifiquemos