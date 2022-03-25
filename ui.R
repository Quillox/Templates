# UI ----------------------------------
shinyUI(navbarPage(
  title = "Template",
  # navbarMenu Tests ------------------
  navbarMenu("Tests",
    ## tabPanel Input/output test -----
    tabPanel(
      title = "Input/output test",
      fluidPage(
        sidebarLayout(
          ### Sidebar panel -----------
          # *Input()
          sidebarPanel(
              #### Help text ----------
              helpText("Help text"),

              #### Input test ---------
              textInput(inputId = "test", label = "Test input")
          ),

          ### Main panel: -------------
          # *Output()
          mainPanel(
            ### Output tests ----------
            textOutput(outputId = "test"),
          )
        )
      )
    ),
    ## tabPanel Image -----------------
    tabPanel(
      title = "Image",
      fluidPage(
        h2("Template image:"),
        img(src = "XXX.png")
      )
    ),
    ## tabPanel Table -----------------
    tabPanel(
      title = "Table",
      fluidPage(
        h2("Template table:"),
        DTOutput(outputId = "csv")
      )
    ),
    ## tabPanel Function --------------
    tabPanel(
      title = "Function",
      fluidPage(
        h2("Template function:"),
        textOutput(outputId = "fct")
      )
    )
  ),
  ## tabPanel Panel 1 -----------------
  tabPanel(
    title = "Panel 1",
    fluidPage(
      h1("Hello")
    )
  )
))
