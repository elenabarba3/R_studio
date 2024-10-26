data() #abrir todos los paquetes

#descargar ficheros de INTERNET (URL) 
download.file(url = "url", destfile = 'ruta carpeta')

#leer datos en formato TABLA
mis_datos <- read.table(file = 'ruta carpeta',
                        header = FALSE,
                        sep=',',
                        col.names=c('A','B','C'),
                        stringsAsFactors = FALSE
                        )
head(mis_datos)

#leer en formato CSV
datos_csv <- read.csv(file='ficher.csv',
                      header = TRUE,
                      sep=','
)

head(datos_csv)

#leer archivos en formato EXCEL
install.packages(readxl)
library(readxl)

excel_sheets("nombrearchivo.xlsx") #indicar nombre de la hoja
datos_excel <- read_excel(path = 'nombrearchivo.xlsx',
                          sheet='nombrehoja')

head(datos_excel)

#INSTALAR EN JSON

install.packages('jsonlite')
library(jsonlite)

datos_json <- read_json(path='nombrearchivo.json')


#archivos cuya estructura desconocemos
file.show('nombrearchivo.xlsx')

#leer archivo linea por. linea
readLines('nombrearchivo.csv', n=5) #indicar el numero de lineas (para ver algo concreto)

#EXPORTAR MATRICES A ARCHIVOS CON DISTINTAS EXTENSIONES
write.table(x=datos_csv,
            file ='PATH/nombre.txt',
            sep = ',',
            row.names = FALSE,
            col.names = TRUE)

#EXPORTAR A CSV
write.csv(x='nombre_csv',
          file='path/nombre.csv',
          sep=',',
          row.names = FALSE,
          col.names = TRUE)

#EXPORTAR A EXCEL 
install.packages('writexl')
library(writexl)

write_xlsx(datos_excel, 'path/nombrearchivo.xlsx')

#EXPORTAR A JSON
datos_json <- toJSON(datos_csv)
writeLines(datos_json, 'path/nombrearchivo.json')



#exportar a formato R

mi_lista <- list('nombre'=c('ana'))
saveRDS(object = mi_lista, file='path/nombrearchivo.rds')



