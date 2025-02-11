## Only run examples in interactive R sessions
library(shiny)

if (interactive()) {
  
  # Example of UI with fluidPage
  ui <- fluidPage(
    
    # Application title
    titlePanel("Hello Shiny!"),
    
    sidebarLayout(
      
      # Sidebar with a slider input
      sidebarPanel(
        sliderInput("obs",
                    "Number of observations:",
                    min = 0,
                    max = 1000,
                    value = 500)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
        plotOutput("distPlot")
      )
    )
  )
  
  
  
  # UI demonstrating column layouts
  ui <- fluidPage(
    title = "Hello Shiny!",
    fluidRow(
      column(width = 4,
             "4"
      ),
      column(width = 3, offset = 2,
             "3 offset 2"
      )
    )
  )
  
  shinyApp(ui, server = function(input, output) { })
}