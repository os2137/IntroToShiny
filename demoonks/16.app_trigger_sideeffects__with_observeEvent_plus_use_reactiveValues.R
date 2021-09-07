
# The syntax of observeEvent() is simlar to eventReactive()
# The observeEvent() doesnt print any output
# observeEvent(input$norm, {rv$data <- rnorm(input$norm)}) - takes a dependency
# on only reactive values in its first argument (EventExpr) and runs code chunk
# when invalidated by the first arument input$norm
# obseverEvent doesnt return any values and so the code you run shouldnt return 
# any values. This code save data in a certain place but doesnt return any value
# The app is not complete only with observeEvent() since it doesnt give nay output
# for that we need to use the reactiveValues
# rv <- reactiveValues(data = rnorm(100))
# reactiveValues builds a list of reactiveValues. Reactive objects will take
# dependencies on these values in usual ways. 

library(shiny)

ui <- fluidPage(
  sliderInput(
    inputId = "num",
    label = "Choose a number", 
    min = 1, 
    max = 100, 
    value = 50
  ), 
  
 
  
  actionButton(
    inputId = "norm",
    label = "Normal Data",
  ),
  
  actionButton(
    inputId = "unif",
    label = "Uniform Data",
  ),
  
  plotOutput(
    outputId = "hist"
  ), 
  verbatimTextOutput(
    outputId = "sum"
  )
)

server <-   function(input, output){
  
  rv <- reactiveValues(data = rnorm(50))
  
  data <- observeEvent(input$norm, {rv$data <- rnorm(input$num)})
  data <- observeEvent(input$unif, {rv$data <- runif(input$num)})
  
  output$hist <- renderPlot({
      hist(rv$data)
    })
  
  
  output$sum <- renderPrint({
    summary(rv$data)
  
  })
}
shinyApp(ui, server)

