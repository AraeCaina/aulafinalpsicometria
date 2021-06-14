
library(shiny)
library(psych)


shinyServer(function(input, output) {

  db_completo <- read_sav("Banco de dados Total - EAE-EP.sav")
  
  # Selecionando somente os casos completos
  db_completo <- db_completo[complete.cases(db_completo),]
  
  # Cria uma lista com todos os itens selecionados

  db <- db_completo[,-c(1:6)] # retira as variaveis indesejadas
  
  observeEvent(input$calcular,{
    output$alpha <- renderPrint({
        summary(psych::alpha(db[,input$autoavaliacao]))
    })
    
  })

})
