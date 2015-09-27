

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("DOE Fuel Economy Exploratory Analysis Tool"),
  

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      h5("This shiny application is designed to help you explore new 2016 car models using data made available by the DOE. Select the criteria below and it will filter the table to the left to show you all cars that meet your needs."),
      sliderInput("combmpg",
                  "Combined Miles Per Gallon:",
                  min = 10,
                  max = 50,
                  value = c(10,50)),
      sliderInput("hwympg",
                  "Highway Miles Per Gallon:",
                  min = 10,
                  max = 50,
                  value = c(10,50)),
      sliderInput("citympg",
                  "City Miles Per Gallon:",
                  min = 10,
                  max = 50,
                  value = c(10,50)),
      sliderInput("cyl",
                  "Cylinders:",
                  min = 3,
                  max = 12,
                  value = c(3,12)),
      
      selectInput("transmission", label = h3("Transmission Type"), 
                  choices = list("Automated Manual","Manual","Automated Manual with paddles","Semi-Automatic","Automatic","CVT with paddles","Continuously Variable"), 
                  selected = "Automatic")
    ),

    # Show a plot of the generated distribution
    mainPanel(
#       plotOutput("distPlot"),
#       plotOutput("distPlot2"),
      dataTableOutput("mytable")
    )
  )
))
