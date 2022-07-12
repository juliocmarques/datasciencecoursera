library(shiny)
library(miniUI)

# Execute a função myFirstGadget() no console e veja o resultado em Viewer
# resusltado no painel direito inferior
myFirstGadget <- function() {
  ui <- miniPage(
    gadgetTitleBar("My First Gadget")
  )
  
  server <- function(input, output, sessiong) {
    observeEvent(input$done, {
      stopApp()
    })
  }
  runGadget(ui, server)
}
