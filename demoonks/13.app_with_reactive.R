

library(shiny)

ui <- fluidPage(
  sliderInput(
    inputId = "num",
    label = "Choose a number", 
    min = 1, 
    max = 100, 
    value = 5
  ), 
  plotOutput(
    outputId = "hist"
  ), 
  verbatimTextOutput(
    outputId = "sum"
  )
)

server <-   function(input, output){
  
  data <- reactive({rnorm(input$num)})
  output$hist <- renderPlot({
    input$num
    hist(data())
    })
  
  output$sum <- renderPrint({
    summary(data())
  }
    
  )
}
shinyApp(ui, server)

# we note that the renderPlot and renderPrint both changes due to change in the input$num 
# but they both generate different random number as you woudl have noticed with the output.
# We can prevent this using reactive experession so that they both respod to the same random number
# reactive() 
# makes a new reactive object that you can use in downstream code
# data <- reactive({rnorm(input$num)})
# This expression above takes a dependency on every reactive value in code chunk*
# Only notifies downstream objects when invalidated
#  Whenever you use reactive expression always always use the value with parenthesis so instead 
#  of data use data() when calling data 
#  Reactive exrepssions cahe their values i.e. the experession will return its most recent 
# value , unless it has become invalidated. 
# Use reactive() to make an object to use in downstream code
# Use render() to make an object to display in the UI
# *Unless you use isolate()


