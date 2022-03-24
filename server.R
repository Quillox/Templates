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
# -------------------------------------

# Load packages -----------------------
library(shiny)

# Load data ---------------------------

# Source helper functions -------------
source("helpers.R")

# Shiny will only run the code outside of the shinySever function once, which
# is all you need to set your server up to run the R expressions contained in
# server.

# Server: render*()--------------------
# The shinyServer() function is run once each time a user visits the app.
shinyServer(function(input, output, session) {
    # Define user specific objects inside shinyServer(), but outside of
    # render* calls. Such as user's session information.

    ## Session information ------------
    cdata <- session$clientData

    ## Output XXX ---------------------
    output$XXX <- renderText(
        # Run every time a user changes a widget that output$XXX depends on.
        expr = {
            paste("Test input:", input$XXX)
        }
    )
})
