#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

ui <- fluidPage(
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      numericInput("numeric","Qual a quantidade de randerização no gráfico?",
                   value=nrow(mtcars),min=1,max=nrow(mtcars),step=1),
      sliderInput("sliderx","Pick minimum e maximum X Values",
                  min = 100, max = 550, value = 250),
      sliderInput("slidery","Pick minimum e maximum y Values",
                  min = 100,max = 415,value = 250),
      #      selectInput("carbs", "Select carb to show",
      #                  choices = c('All', unique(mtcars$carb))),      
      # checkboxInput("show_xlab","Show/Hide X Axis Label", value = TRUE),
      # checkboxInput("show_ylab","Show/Hide Y Axis Label", value = TRUE),
      checkboxInput("show_title","Show Hide Title")
    ),
    # Show a plot of the generated distribution
    mainPanel(
      h3("Graph of Random Points"),
      plotOutput("plot", brush = "plot_brush"),
      tableOutput("data")
    )
  )
)

