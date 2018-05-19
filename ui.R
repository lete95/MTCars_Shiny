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
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Horsepower prediction"),
  h3("The novelty of this data driven product is that Predictor 3 also considers the number of cylinders in the car"),
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("sliderMPG","MPG of the car?",10,35,value=20),
       checkboxInput("showModel1","Show/Hide Model 1",value=TRUE),
       checkboxInput("showModel2","Show/Hide Model 2",value=TRUE),
       checkboxInput("showModel3","Show/Hide Model 3",value=TRUE),
       numericInput("cyls", "State number of Cylinders", value=4, min = 4, max = 8, step = 2)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("plot1"),
       h3("Predicted Horsepower from Model 1:"),
       textOutput("pred1"),
       h3("Predicted Horsepower from Model 2:"),
       textOutput("pred2"),
       h3("Predicted Horsepower from Model 3:"),
       textOutput("pred3")
    )
  )
))
