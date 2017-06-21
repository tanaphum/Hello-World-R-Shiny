library(shiny)
fx1 <- function(x) {sin(x)}
fx2 <- function(x) {cos(x)}
fx3 <- function(x) {tan(x)}
# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Hello Shiny!"),
  
  # Sidebar with a slider input for the number of bins
  selectInput("variable", "Variable:",
              c("Sin(X)" = 1,
                "Cos(X)" = 2,
                "Tan(X)" = 3)
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
  )
)
