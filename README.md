# Buy a house in Beijing

## Files
* main_file: shiny ui and server application
* README.md: description of the project
* beijing_super_clean2.rds: rds file with clean data set
* Shiny Server AWS deployment script

## Packages
shiny,dplyr,ggplot2

## The data set

Our dataset was downloaded from Kaggle, the content is about housing prices in Beijing from 2011 to 2017, scrapped from Lianjia.com (one of the most popular websites with property listings in China). Our analysis will be focused on the transactions between 2010-2018 and unrelated time period data is cleaned. Most variables are self-explanatory and they include URL, ID, Lng, Lat, CommunityID, TradeTime, DOM(the amount of days that the property was listed on the market before it got sold), Followers (special feature - a user can ‘follow’ a transaction), Total price, Price ( per square meter), Square, Living Room, number of Drawing room, Kitchen and Bathroom, Building Type, Construction time, renovation condition, building structure, Ladder ratio (which is the proportion between number of residents on the same floor and number of elevator of ladder. It describes how many ladders a resident have on average), elevator, Property rights for five years（It’s related to China restricted purchase of houses policy), Subway, District, Community average price.

* Link to the data set: https://www.kaggle.com/ruiqurm/lianjia
* Original website from which the data was scraped: https://bj.lianjia.com

## Application 

Our app is designed for conducting an exploratory data analysis using the data set with house prices in Beijing.

We can choose:
* Building Age
* Square meter size
* District
* If the building has a subway station nearby
* Renovation condition
* If the building has an elevator

On the top of the page we can also select the number of entries (10-25-50-100)

