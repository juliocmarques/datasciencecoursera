#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
# shinyUI(fluidPage(

    # Application title
    # titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    shinyUI(fluidPage(titlePanel("Slider App!"),
                      sidebarLayout(
                        sidebarPanel(
                          h1("Move the slider!"),
                          sliderInput("slider2","Slider Me!",0,100,0)
                        ),
                        mainPanel(
                          h3("Slider Value:"),
                          textOutput("text1")
                        )
                      )
                    ))
    
#     sidebarLayout(
#         sidebarPanel(
#             sliderInput("bins",
#                         "Number of bins:",
#                         min = 1,
#                         max = 50,
#                         value = 30)
#         ),
# 
#         # Show a plot of the generated distribution
#         mainPanel(
#             plotOutput("distPlot")
#         )
#     )
# ))
