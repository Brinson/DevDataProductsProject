
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(gdata)
data = read.xls("doe16.xls", sheet = 1, header = TRUE)


shinyServer(function(input, output) {

#   output$distPlot <- renderPlot({
#     data <- subset(data,Comb >= input$combmpg[1])
#     data <- subset(data,Comb <= input$combmpg[2])
#     data <- subset(data,Hwy >= input$hwympg[1])
#     data <- subset(data,Hwy <= input$hwympg[2])
#     data <- subset(data,City >= input$citympg[1])
#     data <- subset(data,City <= input$citympg[2])
#     data <- subset(data,Cylinders >= input$cyl[1])
#     data <- subset(data,Cylinders <= input$cyl[2])   
#     data <- subset(data,Trans == input$transmission) 
#     hist(data$Comb)
# 
#   })
#   
#   output$distPlot2 <- renderPlot({
#     data <- subset(data,Comb >= input$combmpg[1])
#     data <- subset(data,Comb <= input$combmpg[2])
#     data <- subset(data,Hwy >= input$hwympg[1])
#     data <- subset(data,Hwy <= input$hwympg[2])
#     data <- subset(data,City >= input$citympg[1])
#     data <- subset(data,City <= input$citympg[2])
#     data <- subset(data,Cylinders >= input$cyl[1])
#     data <- subset(data,Cylinders <= input$cyl[2])   
#     data <- subset(data,Trans == input$transmission) 
#     hist(data$City)
#     
#   })
  
  output$mytable = renderDataTable({
    data <- subset(data,Comb >= input$combmpg[1])
    data <- subset(data,Comb <= input$combmpg[2])
    data <- subset(data,Hwy >= input$hwympg[1])
    data <- subset(data,Hwy <= input$hwympg[2])
    data <- subset(data,City >= input$citympg[1])
    data <- subset(data,City <= input$citympg[2])
    data <- subset(data,Cylinders >= input$cyl[1])
    data <- subset(data,Cylinders <= input$cyl[2])   
    data <- subset(data,Trans == input$transmission) 
    data
  })

})
