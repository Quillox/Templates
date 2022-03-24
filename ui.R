# UI ----------------------------------
shinyUI(fluidPage(
  ## Title ----------------------------
  titlePanel(title = "XXX",
             windowTitle = "XXX"),

  sidebarLayout(
    ## Sidebar panel: *Input() --------
    sidebarPanel(
        ### Help text -----------------
        helpText("Help text"),

        ### Input XXX -----------------
        textInput(inputId = "XXX", label = "XXX")
    ),

    ## Main panel: *Output() ----------
    mainPanel(
        ### Output XXX ----------------
        textOutput(outputId = "XXX")
    )
  )
))
