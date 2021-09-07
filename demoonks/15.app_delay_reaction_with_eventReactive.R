# to facitliate the delay in reaction i am going to add button to the app. 
# action buttion is an input object just like a slider or drop down menu
#the function that we use to create an action button is called actionButton. 
# actionButton collects a value from the user, in the beginning that value go will be 0, 
# # and then every time the user clikcs the button the value will go up one by one. action buttion 
# arent really intended for you to use specific value of the button link if you are writing
# the code and the code depends on value of action button being too, you are probability making 
# things too much complicated. 
# eventReactive() lets you control when an expression in invalidated
# data <- eventReactive(input$go, {rnorm(input$num)})
# eventReactive is similar to reactive in that it create a reactive expression, but this 
# its function is different. 
# eventReactive takes a dependency on only reactive values in its first argument/(eventExpr)
# i.e. input$go in this instance. 
# Its only going to respond when input go changes it doesnt care about the reacitve values
# in its code chunk anymore. 



library(shiny)

ui <- fluidPage(
  sliderInput(
    inputId = "num",
    label = "Choose a number", 
    min = 1, 
    max = 100, 
    value = 5
  ), 
  
  actionButton(
    inputId = "go", 
    label = "Update"
    
  ),
  
  
  plotOutput(
    outputId = "hist"
  ), 
  verbatimTextOutput(
    outputId = "sum"
  )
)

server <-   function(input, output){
  
  data <- eventReactive(input$go, {rnorm(input$num)})
  
  output$hist <- renderPlot({
      hist((data()))
    })
  
  
  output$sum <- renderPrint({
    summary((data()))
  }
    
  )
}
shinyApp(ui, server)

