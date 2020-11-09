#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("First Dash"),
    h3('Social network ads use case'),
    p("Let's play !"),
    hr(),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 25),
            fileInput('file1', 'Choose CSV File', multiple = FALSE,
                  accept = c('text/csv',
                             'text/comma-separated-values,text/plain',
                             '.csv')
                  )
        ),

        # Show a plot of the generated distribution
        mainPanel(
           tabsetPanel(
               tabPanel("Plot",  plotOutput("distPlot")),
               tabPanel("Summary", verbatimTextOutput("summary")),
               tabPanel("Table", dataTableOutput("table"))
           )
        )
    )
))
