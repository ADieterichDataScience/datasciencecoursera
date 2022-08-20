# This is the server logic of a Shiny web app

library(shiny)

shinyServer(function(input, output) {
  output$h <- renderText(input$height)
  output$w <- renderText(input$weight)
  
  output$BMI <- renderPrint({
    H_metric <- input$height
    W_metric <- input$weight
    H <- H_metric/39.37
    W <- W_metric/2.205
    bmi <- W/(H^2)
    
    bmi})
  
  output$result <- renderPrint({
    H_metric <- input$height
    W_metric <- input$weight
    H <- H_metric/39.37
    W <- W_metric/2.205
    bmi <- W/(H^2)
    
    if (bmi >30) {
      "you may be overweight"
    } else if (bmi < 20) {
      "you may be underweight"
    } else {
      "you are at a healthy weight"
    }
  })
})

  