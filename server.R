# App information ---------------------
#
# App name:
#
# App purpose:
#
# Date created:
#
# Author: David Parker
#
# Email:
#
# Notes:
#
#

# Load packages -----------------------
library(shiny)
library(DT)
library(tidyverse)

# Load data ---------------------------
XXX.csv <- read_csv("data/XXX.csv")

# Source helper functions -------------
# All the *.R files in the R/ directory are automatically loaded in

# Shiny will only run the code outside of the shinySever function once, which
# is all you need to set your server up to run the R expressions contained in
# server.

# Server: render*()--------------------
# The shinyServer() function is run once each time a user visits the app.
shinyServer(function(input, output, session) {
    # Define user specific objects inside shinyServer(), but outside of
    # render* calls. Such as user's session information.

    # Make use of the reactive({}) expressions to avoid redundant calculations.
    # Only call a reactive expression from within a reactive or a render*
    # function. Reactive expressions save their results, and will only
    # re-calculate if their input has changed

    ## Session information ------------
    cdata <- session$clientData

    ## Output tests --------------------
    output$test <- renderText(
        # Run every time a user changes a widget that output$XXX depends on.
        expr = {
            paste("Test input:", input$test)
        }
    )
    output$csv <- renderDT(
        expr = {
          XXX.csv
        }
    )
    output$fct <- renderText(
      expr = {
        hello_world()
      }
    )
})
