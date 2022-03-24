# UI ----------------------------------
shinyUI(fluidPage(
  ## Title ----------------------------
  titlePanel(title = "Template",
             windowTitle = "Template"),

  sidebarLayout(
    ## Sidebar panel: *Input() --------
    sidebarPanel(
        ### Help text -----------------
        helpText("Help text"),

        ### Input test -----------------
        textInput(inputId = "test", label = "Test input")
    ),

    ## Main panel: *Output() ----------
    mainPanel(
      ### Output tests ----------------
      textOutput(outputId = "test"),

      h2("Template image:"),
      img(src = "XXX.png"),

      h2("Template table:"),
      tableOutput(outputId = "csv"),

      h2("Template function:"),
      textOutput(outputId = "fct")
    )
  )
))
