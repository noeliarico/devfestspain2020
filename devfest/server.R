library(shiny)

shinyServer(function(input, output) {
  
  output$output_escribir <- renderText({
    paste("Estás escribiendo:", input$input_escribir)
  })

})
