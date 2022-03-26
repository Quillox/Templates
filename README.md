# Shiny-App-Template
This serves as a simple template for a RShiny app with a sidebar. There are a few comments explaining when each part of the code is run.

## Folders:
- **_Root_** has 2 files:
  - server.R contains the code which runs on the host computer when running the app.
  - ui.R contains the code for the layout of the webpage page which the users will interact with.
- **_data_** contains the data to be loaded into server.R.
- **_www_** contains images to be shown in ui.R.
- **_R_** contains R scripts that will be sourced when the server starts.

I chose to use two seperate files instead of one "app.R" file because when using only one file, the autocomplete for your _input$_ and _output$_ does not work, which is very frustrating.

## When using RStudio:
The comments are written with markdown style headers:
- "# ----"
- "## ----"
- ...


Which makes a nice outline when you push the "show document outline" button (ctrl+shift+o).
