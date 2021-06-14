
library(shiny)

autoavaliacao <- c(
  "eae1",
  "eae3",
  "eae5",
  "eae10",
  "eae13",
  "eae14",
  "eae19",
  "eae23",
  "eae24",
  "eae27",
  "eae28",
  "eae34",
  "eae35",
  "eae38",
  "eae39",
  "eae40",
  "eae44"
)

shinyUI(fluidPage(

    titlePanel("Shiny da Aula do Nelson"),

    sidebarLayout(
        sidebarPanel(
          checkboxGroupInput(
            inputId = "autoavaliacao",
            label = "Itens da Autoavaliação",
            choices = autoavaliacao,
            selected = autoavaliacao
          ),
          actionButton("calcular", "Pronto para análise!")
        ),


        mainPanel(
          verbatimTextOutput("alpha")
        )
    )
))
