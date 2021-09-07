# Can we delay a reaction, no real reason to do that in this app, but consider 
# an app which downloads data from say online, say from yahoo finance, it would be 
# useful for them to type the stock name they want the data from and then the server makes a 
# request say after clicking the submit button. Or may be you have different fields
# where inputs are required so its useful to have the users complete those details and then
# click submit button to activate the server
# by using isolate we make sure that the output doesnt changes as per changes in the input$m
#  or input function
# Use isolate() to return a non reactive object
# what immediate thing we can do with that, if we get non reactive version of the reactive object
# you can call it in a non reactive function. So remember you have to call reactive values and 
# reactive function,but now you know that you can isolate to pass the reactive value to a function 
# that's not a reactive function. 



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
      hist(isolate(data()))
    })
  
  
  output$sum <- renderPrint({
    summary(isolate(data()))
  }
    
  )
}
shinyApp(ui, server)

