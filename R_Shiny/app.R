ui<- fluidPage(
  textInput("name", "whats your name?", value=NA),
 textOutput("greeting")
)

server<-function(input, output, session) {
  output$greeting<- renderText({
    paste0("Hello", input$name)
  })
}
shinyApp(ui,server)