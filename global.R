# Load packages -----------------------
library(shiny)
library(DT)
library(tidyverse)
library(shinythemes)

# Load data ---------------------------
XXX.csv <- read_csv("data/XXX.csv")
df_chroma <- read_csv("data/DARPin_chromato.csv")
df_chroma <- drop_na(df_chroma) %>%
  rename("Experiment" = "Analyte")