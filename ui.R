library(shiny)
 
# Define UI 
shinyUI(fluidPage(
  
  	responsive=FALSE,
  
  # Application title
	titlePanel("Amborella Gene Expression DB"),
  
	sidebarLayout(
		textInput("gene", label="Gene (Example: evm_27.TU.AmTr_v1.0_scaffold00021.3)", value = ""),
		submitButton("Submit"),

 	),	
	
	mainPanel(
		plotOutput("genePlot")
	)
	
))