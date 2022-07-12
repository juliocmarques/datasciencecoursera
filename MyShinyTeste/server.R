#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  
  sample_cars <- reactive({
    set.seed(8675309)  # for some consistent sampling
    df <- mtcars[sample(x=1:nrow(mtcars), size = input$numeric),]
    return(df)
  })  
  
  output$plot <- renderPlot(
    width = function() input$sliderx,
    height = function() input$slidery,
    
    {
      main <- ifelse(input$show_title,paste('You selected',input$numeric, 'cars\n'),"")
      
      ggplot(sample_cars(), aes(wt, mpg)) + geom_point() +
        labs(title=main)       
    }, res = 96)
  
  output$data <- renderTable({
    brushedPoints(mtcars, input$plot_brush)
  })
}
