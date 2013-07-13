# Define UI for PTA prediction
shinyUI(
    pageWithSidebar(  
        # Application title
        headerPanel("PTA estimator"),
        sidebarPanel(
          h4("Enter subject characteristics"),
           selectInput("race", "Race",
                       list("Unknown = 0" = 0, 
                            "White 1" = 1, 
                            "Black 2" = 2,
                            "What are the other codes ?" = 3)
                       ),
            selectInput("gender", "Gender",
                       list("Female = 0 " = 0, 
                            "Male = 1" = 1)
                       ),
            numericInput("age", "Age in months", 0.924, min = 3, max = 19, step = .1),
            numericInput("GCS", "GSC", 5, min = 3, max = 15, step = 1),
            numericInput("TFC", "TFC", 9, min = 0, max = 130, step = 1),
            selectInput("codedInj", "Coded Injury",
                            list(
                                     "Unknown" = NA,
                                     "Whatever 0 is" = 0,
                                     "Whatever 1 is" = 1,
                                     "Whatever 3 is " = 3,
                                     "Whatever 4 is " = 4
                            )
                        ),
            selectInput("dichsurgint", "What is dichsurgint?",
                        list(
                                "Whatever 0 is" = 0,
                                "Whatever 1 is" = 1
                            )
                ),
            selectInput("dichskullfx", "What is dichskullfx?",
                        list(
                                "Whatever 0 is" = 0,
                                "Whatever 1 is" = 1
                            )
                        ),
            selectInput("dichopen", "What is rdichopen?",
                        list(
                                "Whatever 0 is" = 0,
                                "Whatever 1 is" = 1
                            )
                        ),
           selectInput("trichsidelesion", "What is trichsidelesion?",
                        list(
                                "Whatever 0 is" = 0,
                                "Whatever 1 is" = 1,
                                "Whatever 2 is" = 2
                            )
                        ),
            selectInput("codedlesloc", "What is codedlesloc?",
                        list(
                                "Whatever 0 is" = 0,
                                "Whatever 1 is" = 1,
                                "Whatever 2 is" = 2,
                                "Whatever 3 is" = 3,
                                "Whatever 4 is" = 4
                            )
                        ),
            selectInput("simplifieddepth", "What is simplifieddepth?",
                        list(
                                "Whatever 0 is" = 0,
                                "Whatever 1 is" = 1
                            )
                        ),
            selectInput("dichhema", "What is dichhema?",
                        list(
                                "Whatever 0 is" = 0,
                                "Whatever 1 is" = 1
                            )
                        ),
            selectInput("dichpreinjurydx", "What is dichpreinjurydx?",
                        list(
                                "Whatever 0 is" = 0,
                                "Whatever 1 is" = 1
                            )
                        ),
            submitButton("Submit")
        ),
        mainPanel(
            h3('Results of estimation'),
            verbatimTextOutput("summary")
            
          )
    )
)