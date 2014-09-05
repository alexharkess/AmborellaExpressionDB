library(shiny)
library(deSolve)
library(cummeRbund)
 
cuff = readCufflinks()
 
shinyServer(function(input,output) {
    
	getData = reactive({
		if (!nzchar(input$gene))
			return()
		return(getGene(cuff,input$gene))
	})
	
	output$genePlot  = renderPlot( { 
		myGene = getData()
		return(expressionPlot(myGene, replicates=T))
		
	})  
 
})
