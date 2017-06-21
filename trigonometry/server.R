
library(shiny)
fx <- NA
# Define server logic required to draw a histogram
function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    x<-seq(0,4*pi,0.1)
    if(input$variable ==1) {plot(x=x,y=sin(x),type ="l")}
    if(input$variable ==2) {plot(x=x,y=cos(x),type ="l")}
    if(input$variable ==3) {plot(x=x,y=tan(x),type ="l")}
  })
  
}