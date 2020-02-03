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
  titlePanel("Calculating BMI - Body Mass Index"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
        h1("BMI Calculator"),
        h2("Input your weight in kg"),
        sliderInput("slider1", "Slide Me", 5, 200, 0),
        h2("Input your Height in cm"),
        sliderInput("slider2", "Slide Me", 50, 300, 0),
        submitButton("Submit")
    ),
    mainPanel(
            h4("Your BMI is"),
            textOutput("text1"),
            h4("The body mass index (BMI) is the body mass or weight (kg) divided by the square of the body height (m). The unit of BMI is kg/m2.")
)
  )
))
