library(shiny)
shinyServer(function(input, output, session){
    output$sum <- renderPrint({
    # z <- as.numeric(input$z)
    z <- as.numeric(input$conf)
    z2 <- z^2
    r <- as.numeric(input$r)
    f <- as.numeric(input$f)
    k1 <- as.numeric(input$k)
    k <- k1+1
    p <- as.numeric(input$p)
    n <- as.numeric(input$n)
    e <- as.numeric(input$e)
    e2 <- ((e)*(r))^2
    upper <- ((z2)*(r)*(1-r)*(f)*(k))
    lower <- ((p)*(n)*(e2))
    upper/lower
  })
})

