#APLICACIONES SHINY
#1, INTERFAZ USUARIO
#2, SERVIDOR
#3, DECLARACION DE LA APLICACION



library(shiny)

# fluidPage(): Define una página fluida que se adapta al tamaño de la pantalla.

ui <- fluidPage(
  # Componentes UI, como widgets y diseños
)

# input: Objeto que contiene los valores de los widgets en la interfaz de usuario.
# output: Objeto que se utiliza para actualizar la interfaz de usuario.

server <- function(input, output) {
  # Lógica del servidor
}

library(shiny)

ui <- fluidPage(
  # Componentes UI
)

server <- function(input, output) {
  # Lógica del servidor
}

shinyApp(ui, server)



