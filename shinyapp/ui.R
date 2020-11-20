library(shiny)
shinyUI(fluidPage(
    titlePanel("The Shiny app"),
    
    tabsetPanel(type = "tabs",
                # tab 1 
                tabPanel("MTCARS",br(),
                         titlePanel("Predict Horsepower from MPG"),
                         sidebarLayout(
                             sidebarPanel(
                                 sliderInput("sliderMPG", "What is the MPG of the car?", 10, 35, value = 20),
                                 checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
                                 checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE),
                                 submitButton("Submit")
                             ),
                             mainPanel(
                                 plotOutput("plot1"),
                                 h3("Predicted Horsepower from Model 1:"),
                                 textOutput("pred1"),
                                 h3("Predicted Horsepower from Model 2:"),
                                 textOutput("pred2")
                             )
                         
                         
                )
    ),
    tabPanel("GALTON's data",br(),
             titlePanel("Predict Child's height from parent's height"),
             sidebarLayout(
                 sidebarPanel(
                     sliderInput("sliderHeight", "What is the Parent's height?", 55, 80, value = 61),
                     checkboxInput("showModel3", "Show/Hide Model", value = TRUE),
                     submitButton("Submit")
                 ),
                 mainPanel(
                     plotOutput("plot2"),
                     h3("Predicted Child's Height:"),
                     textOutput("pred3")
                 )
                 
                 
             )
    )
    
    )
))