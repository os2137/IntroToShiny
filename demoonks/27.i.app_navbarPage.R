library(shiny)

ui <- navbarPage("My App", 
      tabPanel("Slider",
          sliderInput(
          inputId = "num", 
          label = "Choose a number",
          min = 1, max = 100,  value = 50)
          ),
         

  tabPanel("Plot", plotOutput("hist")), 
  tabPanel("Summary", verbatimTextOutput("sum"))
)#navbarPage



server <- function(input, output) {
  data <- reactive({rnorm(input$num)})
  output$hist <- renderPlot({
    hist(data())   
  })
  output$sum <- renderPrint({
    summary(data())
  })
}

shinyApp(ui = ui, server = server)
