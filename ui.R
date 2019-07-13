#
# This is the User Interface code for my BMI calculator
# By DM, July 11, 2019
# For Course 9 of the Johns Hopkins data science specialization.
#

library(shiny)
library(shinyWidgets)

# Define UI for application 
shinyUI(fluidPage(
  includeCSS("style.css"),
  
  # Application title
  titlePanel("Body Mass Index Calculator"),
  
  setBackgroundColor(color="aqua"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("Weight",
                   "Weight in pounds",
                   min = 100,
                   max = 250,
                   value = 150),
       sliderInput("Height",
                "Height in inches",
                min = 55,
                max = 100,
                value = 70)
    ),
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(
        tabPanel(h3("Results"),br(),h3(textOutput("BMIresult"))),
        tabPanel(h3("Instructions"),br(),h4("About this calculator"),br(),"This Body Mass Index calculator is intended to give you feedback on whether you are underweight, a healthy weight, or overweight for your height. It uses two sliders to allow you to set height and weight. The calculator uses Imperial rather than Metric units. The default height is 70 inches and the default weight is 150 lbs. The height and weight are both incremented in whole numbers, i.e. no fractional inches or pounds can be used, so please round to the nearest whole number. The range is 100 to 250 pounds and 55 to 100 inches.This calculator can be used to allow you to determine how much weight you have to lose or gain to meet the so-called healthy range. As you move a slider the BMI value, rounded to the nearest tenth, is recalculated and displayed, along with message telling you whether the weight is fine, too low, or too high.",br(),br(),"Disclaimer: Note that BMI calculators are only approximate and do not account for variations in human body composition, e.g. extremely thick or thin bones, or the presence of abnormal amounts of muscle as you might find with a body builder which might make them seem overweight in terms of BMI. Your best source of information about whether you are healthy should be your doctor.",br(),br(),"Please click on the Results tab, above, to return to the calculator.")))
  )
)
)