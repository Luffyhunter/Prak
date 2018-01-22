#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)





# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel(title=h4("Test Database with plot", align="center")),
  sidebarPanel(tableOutput("t")),
  mainPanel(plotOutput("plot2")))
  )
