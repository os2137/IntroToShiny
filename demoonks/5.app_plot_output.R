# For Printing Ouputs
# 1.  Add a *Output function to ui (places output)
# 2. Have server save object as output (save to output$) 
# 2a. Match names such as plotOutput("hist") to output$hist or vice-versa
# 3. Make with render*() function in server (builds output)
# 3a. render*(): Builds reactive output to display in UI e.g. renderPlot({
# hist(iris$Sepal.Length)
# }
# )




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
  )
)

server <-   function(input, output){
  output$hist <- renderPlot({
    hist(rnorm(100))
    })
}
shinyApp(ui, server)

