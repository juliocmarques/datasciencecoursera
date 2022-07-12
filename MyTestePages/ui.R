#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


  shinyUI(
    navbarPage("My Application",
               tabPanel("Component 1", uiOutput('page1')),
               tabPanel("Component 2"),
               tabPanel("Component 3")
    )
  )