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
      ### Output test ----------------
      textOutput(outputId = "test"),

      ### Output template image -------
      h2("Template image:"),
      img(src = "XXX.png"),

      ### Output template table -------
      h2("Template table:"),
      tableOutput(outputId = "csv"),

      ### Output template function ----
      h2("Template function:"),
      textOutput(outputId = "fct")
    )
  )
))
