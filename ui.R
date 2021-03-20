# ui.R file for Class 9 Project

library(shiny)
library(plotly)

# Define UI for application that draws boxplots for each airquality measurement, by month

shinyUI(navbarPage("The Joyner–Boore Attenuation Data Explorer",
                tabPanel("Plot",br(),
                        sidebarPanel(sliderInput("slider1", label=h3("Select Magnitudes"),
                                    min = 5, max = 8, value = c(5, 7.7), step=0.1),
                                submitButton("Submit")
                                ),
                        mainPanel(plotlyOutput("plot1"))),
                tabPanel("About", h3("Description"),
                        h5("This data gives peak accelerations measured at various observation stations for 23 earthquakes in California.
                           The data have been used by various workers to estimate the attenuating affect of distance on ground acceleration."),
                        h4("Format"),
                        h5("Event - (numeric) Event Number"),
                        h5("Mag - (numeric) Moment Magnitude"),
                        h5("Station - (factor) Station Number"),
                        h5("Dist - (numeric) Station-hypocenter distance (km)"),
                        h5("Accel - (numeric) Peak acceleration (g)"))
                        )

                )