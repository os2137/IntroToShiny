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

