# Data Products Course Project
# Shiny App Development
## By Andrew Dieterich, August 20, 2022

library(shiny)
shinyUI(fluidPage(
  titlePanel("Slider App"),
  sidebarLayout(
    sidebarPanel(
      h2("Enter values to calculate your BMI"),
      sliderInput("height", "Slide for height (inches)", 48, 84, 66),
      sliderInput("weight", "Slide for weight (pounds)", 0, 260, 150),
    ),
    mainPanel(	
      h3("Slider Values to determine BMI"),
      h4("Your height:"),
      tabPanel("Tab 2", textOutput("h")),
      h4(br(), "Your weight:"),
      tabPanel("Tab 3", textOutput("w")),
      h3("Your calculated BMI is"),
      tabPanel("Tab BMI", textOutput("BMI")),
      h3("Your BMI health category is:"),tabPanel("Tab 4", textOutput("result"))
    )
  )
))


