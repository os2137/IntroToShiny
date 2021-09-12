
library(shiny)
library(ggplot2)
diamonds2 <- diamonds[sample(1:nrow(diamonds), 5000), ]

ui <- fluidPage(
  plotOutput("plot1", brush =  "brush"),
  verbatimTextOutput("location")
  
)


server <- function(input, output) {
  output$plot1 <- renderPlot({
    ggplot(diamonds2, aes(x = cut, y = color)) +
      geom_count() +
      theme_bw()
  })
  
  output$location <- renderPrint({
    brushedPoints(diamonds, input$brush)
  })
  
}

shinyApp(ui, server)