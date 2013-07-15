library(shiny)
library(shinyIncubator)
library(randomForest)
load("fittedModels.rda")

shinyServer(
    function(input, output) {  
        output$rfPrediction <- renderPrint({
            if (input$go == 0) return(cat(""))
            else{
                newdata <- data.frame(
                            race = as.factor(input$race),
                            gender = as.factor(input$gender),
                            GCS = input$GCS,
                            TFC = input$TFC,
                             codedinj = as.factor(input$codedinj),
                             dichsurgint = as.factor(input$dichsurgint),
                             dichskullfx = as.factor(input$dichskullfx),
                             dichopen = as.factor(input$dichopen),
                             trichsidelesion = as.factor(input$trichsidelesion),
                             codedlesloc = as.factor(input$codedlesloc),
                             simplifieddepth = as.factor(input$simplifieddepth),
                             dichhema = as.factor(input$dichhema),
                             dichpreinjurydx = as.factor(input$dichpreinjurydx),
                             age = input$age)
               isolate(cat( predict(bestFit, newdata = newdata) ))
            }
            })
    }
)        
