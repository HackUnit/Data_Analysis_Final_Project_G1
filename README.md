# Data_Analysis_Final_Project_G1
Main Repository for Group One's Final Project.

# Machine Learning Model

Using Multivariate Linear Regression and Random Forest Classifiers to analyze relationships in GDP factors

## Descriptions of Machine Learning Model Methodology

### Description of preliminary data Preprocessing:

  * Our preliminary data preprocessing began with viewing how we could connect our four data tables. Our first data table, World development indicators (WDI), provided us with a country code (CC) field that we could use to identify the rest of our data tables going forward. Using Excel’s INDEX MATCH function, I was able to append the CC field onto our PCI and FTRI tables. Our tables had to be converted into CSV files from XLS format. Finally, before importing into Jupyter we had to convert our files into UTF-8-character encoding using a simple work around in Notepad. Our data tables were relatively clean as they have been prepared by two reputable international organizations that focus on world economic data collection, and thus we were able to simply drop nulls using pandas.

### Description of preliminary feature engineering and preliminary feature selection, including their decision-making Process:

  * For our preliminary feature engineering we chose to use a correlation matrix heatmap to help visualize the relationship between our numerical values. We did find that two fields that are overall composites of our PCI and FTRI fields were heavily correlated with all our other fields. We dropped our CC field for our analysis as it is simply a duplicate identifier for our ‘economy’ field. 
 
### Description of how data was split into training and testing sets:

  * For our multivariate linear regression model, it was important to split our data into training and testing sets as it is necessary for supervised machine learning. It will first use the training set to learn, and then use the testing set to assess its performance. For our purposes we split our data into X and y in order to be able to predict our target of GDP in millions. These X and y values were then split again into training and testing sets. By splitting our data this way, we will be able to ensure that our model has a way to evaluate the predictions it calculates. 
  
 ### Explanation of model choice, including limitations and benefits:

  * For our first model we chose a multivariate linear regression, as this model will help form the basis for a predictive analysis tool. The final model will help countries determine how investments or losses in certain features will impact their GDP growth. Our next model will be a random forest classifier, as it can identify which features have the greatest impact on our target in. In our case the target is GDP, and thus our model help give countries an idea of what economic features to invest in and safeguard the most. Some limitations of our models is that they will not be able to take in all our features. Machine learning requires zero null values which meant that some countries with incomplete economic data will not be able to be part of our model.


# Outline of Group One's Final Project.

## Selected Topic

Our project analyzes the relationship between ***GDP***/***GDP per capita*** and the productive and technological capacities of different countries between the years **2008** and **2019**.


## Selection Reasoning

As the gap between low-income and high-income countries continues to grow, it is important to understand how productive and technological capacities of countries affects the ***GDP***/***GDP per capita*** of different regional economies.


## Description of Data Sources

The data sources used for this project are derived from two reputable international organizations:
**The United Nations Conference on Trade and Development (UNCTAD)** and the **World Bank**.


- From **UNCTAD**, the data selected include the productive capacities index [(PCI)](/Data/Clean_Data/Productive_capacities_index,annual.csv) and the frontier technology readiness index [(FTRI)](/Data/Clean_Data/Frontier_technology_readiness_index,annual.csv).

- The ***PCI*** measure the levels of productive capacities along three pillars for a given economy: productive resources, entrepreneurial capabilities and production linkage. The features of the ***PCI*** analyzed for each country in this project include: human capital, natural capital, energy, transport, ICT, institutions, private sector, and structural change.

- The ***FTRI*** measures technological capacities related to physical investment, human capital and technological effort, and covers national capacities to use, adopt and adapt these technologies. The features of the ***FTRI*** analyzed for each given country in this project include: ICT, Skills, Research and Development, Industry Activity, and Access to Finance.

- From the **[World Bank](https://data.worldbank.org/indicator/NY.GDP.PCAP.CD?end=2021&name_desc=true&start=2021)**, the data selected include countries broken by global regions and six income levels. Each country has a measurement for ***GDP per capita*** and ***GDP***: <br>
    - ***GDP per capita*** is gross domestic product divided by midyear population.<br>
    - ***GDP*** is the sum of gross value added by all resident producers in the economy plus any product taxes and minus any subsidies not included in the value of the products.


## Questions Addressed

- The main question we will address is what are the most important productive capacity and technological capacity features that a government should invest in to increase their ***GDP***/***GDP per capita***.<br>
- Another question we will address is should countries concentrate on productive capacity or technological capacity features to maximize their GDP/GDP per capita.
- The last question we will address is how do productive capacity and technological capacity features differ between
countries in different regions of the world.


## Collaborators

 - [File of Collaborators](Resources/Collaborators.txt) and what they have worked on. File kept separate to ease in editing.

#### For Collaborators

[Link](https://docs.google.com/document/d/1cURwKdMtSmZSuzYFqN_c9lPTZehsTW9BrUK0n6Fs-nE/edit) to editable Segment 2 Rubric Checklist.

[Link](https://docs.google.com/presentation/d/1Jcp-525SAy1fqANWJpyrW5gBkoJuHJ20XVnxLsWbyDU/edit?usp=sharing) to editable Google Slides
