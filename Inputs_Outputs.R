library(shiny)

animals<- c("dog", "cat", "mouse", "bird", "other")

ui<- fluidPage(
  sliderInput("date", "When should we deliver", 
              min = 0,
              max = 100,
              step =5,
              value=0, 
              animate = TRUE
              ))


server<- function(input, output, session) {
}
shinyApp(ui, server)
