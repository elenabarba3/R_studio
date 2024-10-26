install.packages('rvest')
library(rvest)
library(stringr)
library(lubridate)

url <- 'https://en.wikipedia.org/wiki/Men&27s_high_jump_world_record_progression'
page <- read_html(url)
tablas <- html_table(html_elements(page,'table'))
raw <-  as.data.frame(tablas[3])
summary(raw)
head(raw)

meters <- str_sub(raw$Mark,1,4)
head(meters)
class(meters)
meters <- as.numeric(meters) #para convertir a vector numerico 

country <- str_sub(raw$Athlete, -4,-2)
head(country, n=5)

#coger nombres de atletas

athlete <- str_sub(raw$Athlete, 1,-6)
head(athlete, n=5)
athlete <- str_trim(athlete)
athlete <- str_to_upper(athlete)
head(athlete, n=5)

#separar la fecha 
dates <- raw$Date
head(Dates, n=5)

#limpiar numeros referencias
dates <-str_replace(dates, '\\[[1-9]\\]', '') #para que sea exactamente asi  \\
class(dates) #sigue como caracter, modificar a formato fecha 
dates <- dmy(dates) #tipo fecha
#si sale error de que un tipo de fecha no esta bien, modificarlo 
year <- year(dates) #Nos quedamos con el ano
head(year)
month <- month(dates)#quedarnos con el mes
day <- day(dates) #Lo mismo con el dia

record_time_elapsed <- year(today())-year(dates)
head(record_time_elapsed)
clean_data <- data.frame('Record'= meters,
                         'Athelete'= athlete,
                         'Country'= country,
                         'Record Date' =dates,
                         'Record Year' = year,
                         'Record month' = month,
                         'record time elapsed'= record_time_elapsed,
                         'city'=raw$Venue
                         )

#PARTE 2, MODIFICAR DATOS CON DPLYR

library(dplyr)
head(clean_data, n=5)
#anadir columna nueva con MUTATE
info <- clean_data %>% mutate('Multiple Records'=ifelse(duplicated(Athlete), TRUE, FALSE))
        select(Record,Athlete, Record.Year, 'Multiple Records', Country)
 #filtrar por record
info <-  clean_data. %>% select(Record,Athlete, Record.Year, Country) %>%
        filter (Record>=2.30)
info

#agrupar por paises y agrupar y ordenar

info <-  clean_data. %>% select(Record,Athlete, Record.Year, Country) %>%
  filter (Record>=2.30) %>% group_by(Country) %>%
  summarise('maxrecord'=max(Record), 'N. of records' =n()) %>% arrange(desc(maxrecord))
info
clean_data



