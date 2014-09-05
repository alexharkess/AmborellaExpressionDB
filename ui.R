library(shiny)
 
# Define UI 
shinyUI(fluidPage(
  
  # Application title
	titlePanel("Amborella Gene Expression DB"),
  
	sidebarLayout(
		textInput("gene", label="Gene", value = ""),
		submitButton("Submit")
 	),
	
	mainPanel(
		plotOutput("genePlot")
	)
	
))