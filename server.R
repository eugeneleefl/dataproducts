library(shiny)

shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    library(ggplot2)
        #simulate k means of Exponential Random Variables with parameters n = 40 (fixed) and rate = rate
    set.seed(123456)
    k<-input$k
    rate=input$rate
    mns=NULL
    for (i in 1:k) mns = c(mns, mean(rexp(40,rate)))
    means<-cumsum(mns)/(1:k)
        ggplot(data.frame(x=1:k,y=means),aes(x=x,y=y))+geom_hline(yintercept=1/rate)+
          geom_line(size=1)+labs(x='Number of Observations',y='Cumulative Mean')+
          ggtitle("Cumulative Mean of 40 Exponential Random Variables")
  })
  output$inputValue <- renderPrint(round({1/input$rate},2))
})
