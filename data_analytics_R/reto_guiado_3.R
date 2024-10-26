#leer datose excel 
library(readxl)

excel_sheets(path = 'path/nombre.xlsx') #devuelve nombre hojas
datos <- read_excel(path = 'path/nombre.xlsx', sheet = 'cars') #almacenar datos
head(datos, n=5)
#del conjunto d e datos nos quedamos con todas las columnas solo de las filas. 
#QUE LA COL AM SEA 0
automaticos <- datos[datos$am == 0, ]

resumen_at <- automaticos[,c('mpg', 'cyl', 'hp', 'gear')]

datos[datos$model == 'Mazda RX4', ]#COMA ESPACIO PARA QUEDARNOS CON TODAS LAS COLUMNAS
#SOLO SU marcha
datos[datos$model == 'Mazda RX4', ]&gear

#leer desde una web 
library(rvest)
url <- 'url'
page <- read_html(url)
#quedarse con las tablas de la web
tables <- html_table(html_elements(page, 'table'))
table <- tables[[3]]

class(table)
head(table, n=5)
tail(table, n=5)

table$Mark
ny - table[table$Venue == 'New York',] #siempre indicar filas y columnas
ny


