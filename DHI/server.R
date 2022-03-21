library(shiny)
library(rio)
library(caret)

rf_cross_model <- import("data/rf_cross_model.rds")

function(input, output) {
  newData <- reactive({
    data.frame(
      clump_thickness = input$clump_thickness,
      uni_cell_size = input$uni_cell_size,
      uni_cell_shape = input$uni_cell_shape,
      mar_adhesion = input$mar_adhesion,
      single_epi_cell_size = input$single_epi_cell_size,
      bare_nuclei = input$bare_nuclei,
      bland_chromatin = input$bland_chromatin,
      normal_nucleoli = input$normal_nucleoli,
      mitoses = input$mitoses
    )
  })
  
  pred_outcome <- reactive({
    pred <- predict(object =rf_cross_model, newData())
  })
  
  output$label <- renderText({as.character(pred_outcome()[1])})
  
}