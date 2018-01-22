#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(RMySQL)
con <- dbConnect(MySQL(),user = 'user2', password='password', host = 'localhost', dbname="tdb")
x <- dbGetQuery(con, statement = paste("SELECT x_Achse","FROM punkte"))
y <- dbGetQuery(con, statement = paste("SELECT y_Achse","FROM punkte"))
table1 <- dbGetQuery(con, statement = paste("SELECT *","FROM punkte"))
df <- data.frame(x,y)
dbDisconnect(con)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$plot2<-renderPlot({ggplot(df,aes(x=x,y=y))+geom_line(colour='blue')},height = 400,width = 600)
  output$t<-renderTable(table1)
 
})
