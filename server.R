#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
#

library(shiny)

# BMI = kg/m^2

# Define server logic required to 
shinyServer(function(input, output) {
  #Convert weight to kilograms
  output$BMIresult <- renderText({
    kg <- (input$Weight) / 2.2
    #Convert height to meters
    meters <- (input$Height) * 0.0254 
    
    #Calculate BMI
    BMI <- kg/(meters^2)
    
    if (BMI < 18.5) {
      BMImessage <- ", which is too low"
    }
    if (BMI > 25) {
      BMImessage <- ", which is too high"
    } 
    if ((18.5 < BMI) & (BMI < 25)) {
      BMImessage <- ", which is fine."
    }
    
    #Display BMI as a number
    paste("Your BMI is",round(BMI,1),BMImessage)
    
  
    
    #Colour number as red or green depending on whether it is in range or not
  }
  )
 }
 )
    


