library(shiny)
library(datasets)

case1 <- lm(dist ~ speed, data = cars)
calcStop <- function(spd) predict(case1, data.frame(speed = spd))

shinyServer(
  function(input, output) {
    output$howFast <- renderPrint({input$carSpeed})
    output$stopDist <- renderPrint({calcStop(input$carSpeed)})
    })
