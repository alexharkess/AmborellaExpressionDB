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
		genetmp<-expressionPlot(myGene,replicates=T)
		return(genetmp + labs(title="") + xlab("") + theme(legend.position="none") )
		
	})  
 
})
