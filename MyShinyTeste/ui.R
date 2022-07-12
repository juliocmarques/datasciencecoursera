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
      sliderInput("sliderx","Largura mínimo e máximo eixo X",
                  min = 100, max = 550, value = 250),
      sliderInput("slidery","Altura mínimo e máximo eixo Y",
                  min = 100,max = 415,value = 250),
      checkboxInput("show_title","Visualizar título")
    ),
    # Show a plot of the generated distribution
    mainPanel(
      h3("Gráfico de pontos aleatórios"),
      plotOutput("plot", brush = "plot_brush")
    )
  ),
  
  tableOutput("data")

)

