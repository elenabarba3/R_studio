#GGPLOT2 GRAFICOS 
install.packages('ggplot2')
install.packages('gapminder')
library(ggplot2)
library(gapminder)
library(dplyr)

head(gapminder, n=10)
spain <- filter(gapminder, country == 'Spain')
spain

ggplot(data = spain, aes(x=year, y = lifeExp)) +
  geom_line(color = 'green') +
  geom_point(size=3, color = 'green') +
  geom_text(aes(label = lifeExp))
  labs(title = 'evolucion de la esperanza de vida en espana',
       x = 'anos',
       y = 'esperanza de vida')

country <- gapminder %>% select(country, continent) %>% 
  group_by(continent) %>% filter(!duplicated(country)) #filtrar duplicados

ggplot(data=country) + geom_bar(aes(y=continent),fill = 'blue') + 
  labs(title='paises por continente', x='numero paises',y = 'continente')

#nuevo grafico dispersion
europe <- filter(gapminder, continent =='Europe')
#guardar en una variable 
point <- ggplot(data = europe, aes (x= year,  y = lifeExp)) + 
  geom_point(aes(color=gdpPercap, size = pop), alpha =3 /5) +
  labs(title='esperanza de vida en europa',
  x = 'anos',
  y='esperanza de vida') +
  theme(panel.background= element_blank())
  theme(legend.position ='none')
point

