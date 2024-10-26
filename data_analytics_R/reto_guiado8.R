library(shiny)
library(ggplot2)

ui <- fluidpage(
  titlePanel('diamondsapp'),
  p('datos par dataset diamonds'),
  sidebarLayout(
    sidebarPanel(
      selectInput('variable', 'seleccione una variable', 
                  choices = c('carat','cut', 'color','clarity')), #lo primero no ve el usuario lo segundo si
      sliderInput('muestra', 'tamano de la muestra',
                  min = 1000,
                  max = nrow(diamonds),
                  value = min(5000, nrow(diamonds)), step=500, round = 0)
    ),
    mainPanel(
      tabsetPanel(
        tabPanel('grafico dispersion', renderPlot('scatterplot')),
        tabPanel('grafico barras', renderPlot('bar')),
        tabPanel('tabla', renderTable('tabla'))
      )
    )
  ) #definir grid
  
)

server <- function(input,output){
  output$scatterplot <- renderPlot({
    ggplot(diamonds[sample(nrow(diamonds), input$muestra),],
           aes_string(x=input$variable, y='price'))+
      geom_point()
  })
  output$bar <- renderPlot({
    ggplot(diamonds[sample(nrow(diamonds), input$muestra),],
           aes_string(x=input$variable))+
      geom_bar()
  })
  output$table <- renderTable({
    ggplot(diamonds[sample(nrow(diamonds), input$muestra),],)
          
  })
}


shinyApp(ui=ui, server=server)