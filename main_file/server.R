library(shiny)
library(dplyr)
library(ggplot2)
library(DT)
# library(plotly)

data <- readRDS("beijing_super_clean2.rds")

shinyServer(
  # Define server logic
  function(input, output) {
    
    top_10_followers <- function(){
      data %>% 
        filter(district == input$district) %>%
        filter(renovationCondition==input$renovationCondition) %>%
        filter(building_age == input$building_age) %>%
        filter(elevator==input$elevator) %>%
        filter(subway==input$subway) %>%
        filter(totalPrice<=input$totalPrice[2]) %>%
        filter(totalPrice>=input$totalPrice[1]) %>%
        filter(square<=input$square[2]) %>%
        filter(square>=input$square[1]) %>%
        filter(tradeTime<=input$tradeTime[2]) %>%
        filter(tradeTime>=input$tradeTime[1])
    }
    
    price_time_trends <- function(){
      data %>% 
        filter(district == input$district) %>% 
        filter(renovationCondition==input$renovationCondition) %>%
        filter(building_age == input$building_age) %>%
        filter(elevator==input$elevator) %>%
        filter(subway==input$subway) %>%
        filter(totalPrice<=input$totalPrice[2]) %>%
        filter(totalPrice>=input$totalPrice[1]) %>%
        filter(square<=input$square[2]) %>%
        filter(square>=input$square[1]) %>%
        filter(tradeTime<=input$tradeTime[2]) %>%
        filter(tradeTime>=input$tradeTime[1]) %>%
        ggplot(aes(x = tradeTime, y = price)) +
        geom_col()+
        ggtitle("The housing price trend among each district")
    }
    
    
    # MODIFY CODE BELOW: Render a DT output named "table_top_10_names"
    output$table_top_10_followers <- DT::renderDT({
      DT::datatable(top_10_followers())
    })
    output$price_according_to_time<-renderPlot({
      price_time_trends()
    })
    
  }
  
)
