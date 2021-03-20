# server.R file for Class 9 Project

library(shiny)
library(plotly)

# Define server logic required to draw the selected plot

shinyServer(function(input, output) {
  
  output$plot1 <- renderPlotly({
    magMin <- {input$slider1}[1]
    magMax <- {input$slider1}[2]
    temp <- subset(attenu,mag > magMin & mag < magMax)
    plot_ly(temp,x=~dist,y=~accel,type="scatter",mode="markers",color=~mag)  %>%
      layout(title = 'Acceleration vs Distance from Hypocenter',
             xaxis = list(title = 'Station-Hypocenter Distance (km)'),
             yaxis = list(title = 'Peak Acceleration (g)'))
  })
  
  
})


## add line of best fit???
# improve labels of plot, add title
# make a tab for details about the data set