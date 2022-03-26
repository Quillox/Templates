# UI ----------------------------------
shinyUI(navbarPage(
  title = "Template",
  # navbarMenu Tests ------------------
  navbarMenu(
    title = "Tests",
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
    title = "Chromatography",
    fluidPage(
      sidebarLayout(
        sidebarPanel(
          sliderInput(inputId = "slider",
          label = "Volume (mL)",
          min = round(min(df_chroma$Volume), 1),
          max = round(max(df_chroma$Volume), 1),
          step = 1,
          value = c(round(min(df_chroma$Volume), 1),
                    round(max(df_chroma$Volume), 1))
          )
        ),
        mainPanel(
          tabsetPanel(
            tabPanel("Plot", plotOutput(outputId = "plot")),
            tabPanel("Summary", verbatimTextOutput("summary")),
            tabPanel("Table", DTOutput("table"))
          )
        )#mainPanel
      )
    )
  )# tabPanel
))# UI
