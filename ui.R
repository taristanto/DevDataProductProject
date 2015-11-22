library(shiny)
shinyUI(pageWithSidebar(
  # Webpage Title
  headerPanel("Calculate The Expected Stopping Distance"),
  
  # Input Panel on the side
  sidebarPanel(
    h4('Data Product Class Final Project'),
    p('Created by T. Aristanto'),
    p('on 11-21-2015'),
    h3('Enter the car speed'),
    sliderInput("carSpeed", 
                "Car Speed in MPH:", 
                min = 0,
                max = 200, 
                value = 60)
    
  ),
  
  # Result Panel 
  mainPanel(
    h2('Background:'),
    p('By using the linear model of the speed and stopping distance in cars dataset provided by the RStudio, the program will try to predict the stopping distance of a car at any given speed from 0 to 200 mph'),
    br(''),
    h2('User Guide:'),
    p('1. Using the slider on the side, select the speed of the car in mph'),
    p('2. The predicted stopping distance will be shown under the Calculation Result section below.'),
    br(''),
    h2('Calculation Result:'),
    h4('If the car speed is (in MPH):'),
    verbatimTextOutput("howFast"),
    h4('Then the expected stopping Distance of the car (in feet):'),
    verbatimTextOutput("stopDist")
  )
))
