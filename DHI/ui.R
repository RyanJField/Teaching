library(shiny)
library(tidyverse)

fluidPage(
  titlePanel("Machine Learning in DHI"),
    p("Please describe the mass: "),
    fluidRow(
      column(4, 
             sliderInput("clump_thickness",
             label = "Clump Thickness",
             min = 0,
             max = 10,
             step = 1,
             value = 0)
      ),
      column(4, 
             sliderInput("uni_cell_size",
                         label = "Uniformity of Cell Size",
                         min = 0,
                         max = 10,
                         step = 1,
                         value = 0)
      ),
      column(4, 
             sliderInput("uni_cell_shape",
                         label = "Uniformity of Cell Shape",
                         min = 0,
                         max = 10,
                         step = 1,
                         value = 0)
      ),
      column(4, 
             sliderInput("mar_adheision",
                         label = "Marginal Adhesion",
                         min = 0,
                         max = 10,
                         step = 1,
                         value = 0)
    ),
    column(4, 
             sliderInput("single_epi_cell_size",
                         label = "Single Epithelial Cell Size",
                         min = 0,
                         max = 10,
                         step = 1,
                         value = 0)
    ),
    column(4, 
             sliderInput("bare_nuclei",
                         label = "Bare Nuclei",
                         min = 0,
                         max = 10,
                         step = 1,
                         value = 0)
    ),
    column(4, 
             sliderInput("bland_chromatin",
                         label = "Bland Chromatin",
                         min = 0,
                         max = 10,
                         step = 1,
                         value = 0)
    ),
    column(4, 
             sliderInput("normal_nucleoli",
                         label = "Normal Nucleoli",
                         min = 0,
                         max = 10,
                         step = 1,
                         value = 0)
    ),
    column(4, 
             sliderInput("mitoses",
                         label = "Mitosis",
                         min = 0,
                         max = 10,
                         step = 1,
                         value = 0)
    )
  ),
  fluidRow(
    h3("Probable Outcome: "),
    textOutput("label")
  )
)