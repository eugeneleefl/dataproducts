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
                  value = 20,
                  animate=TRUE),
    
      sliderInput("rate",
                "Rate of Exponential Random Variable",
                min = 0.01,  max = 1, value = 0.1)
  ),
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      h4('Theorectical Mean'),
      verbatimTextOutput("inputValue"),
      p('Adjust the sliders to create the cumulative means for exponential random variables with n = 40. You can adjust the rate and the number of means to be generated in the simulation. Notice that as the number of means increases, the cumulative mean tends towards the theoretical mean. This demonstrates Central Limit Theorem. This application is created using code I created from the Coursera Statistical Inference course project as part of the Data Science specialisation.')
    ))))
