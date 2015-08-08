library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Exploring Central Limit Theorem"),

  # Sidebar with a slider input for number of means
  sidebarLayout(
    sidebarPanel(
      sliderInput("k",
                  "Number of Means Simulated",
                  min = 10,
                  max = 500,
                  value = 10,
                  animate=TRUE),
    
      sliderInput("rate",
                "Rate of Exponential Random Variable",
                min = 0.01,  max = 1, value = 0.1)
  ),
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      h4('Theorectical Mean'),
      verbatimTextOutput("inputValue")
    ))))
