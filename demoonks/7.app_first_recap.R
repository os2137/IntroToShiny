# Recap: Shiny
# 1. Begin each app with the template
# 2. Add elements as arguments to fluidPage()
# 3. Create reactive inputs with an *Input() function
# 4. Display R results with an *Output() function
# 5. User the server function to assemble inputs into outputs. This is a three step process
# 5.1. output$hist <- 1.Save the output that you built to output$
# 5.2. renderPlot({hist(rnorm(input$num))}) 2. Build the output with a render*() function
# 5.3. input$num 3. Access input values with input$
# 6. Creat reactivity by using Inputs to build rendered Outputs


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
    input$num
    hist(rnorm(100))
    })
}
shinyApp(ui, server)

# under renderPlot we also directly write to hist(rnorm(input$num)) and this will
# render correctly and perhaps preferred method as instructor did.  