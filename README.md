# The Impacts of Productive and Technological Capacities on GDP

## Selected Topic

Our project analyzes the relationship between ***GDP*** and the productive and technological capacities of different countries between the years **2008** and **2019**.


## Selection Reasoning

It is important to understand how the productive and technological capacities of countries affects their ***GDP*** so that a government can invest in the most important capacities to increase economic growth. Moreover, assessing the relationship between productive and technological capacities and ***GDP*** will help diminish economic inequality between different regional economies in the world.

## Description of Data Sources

The data sources used for this project are derived from two reputable international organizations:
**The United Nations Conference on Trade and Development (UNCTAD)** and the **World Bank**.


- From **UNCTAD**, the data selected include the productive capacities index [(PCI)](/Data/Clean_Data/Productive_capacities_index,annual.csv) and the frontier technology readiness index [(FTRI)](/Data/Clean_Data/Frontier_technology_readiness_index,annual.csv).

- The ***PCI*** measure the levels of productive capacities along three pillars for a given economy: productive resources, entrepreneurial capabilities and production linkage. The features of the ***PCI*** analyzed for each country in this project include: human capital, natural capital, energy, transport, ICT, institutions, private sector, and structural change.

- The ***FTRI*** measures technological capacities related to physical investment, human capital and technological effort, and covers national capacities to use, adopt and adapt these technologies. The features of the ***FTRI*** analyzed for each given country in this project include: ICT, Skills, Research and Development, Industry Activity, and Access to Finance.

- From the **[World Bank](https://data.worldbank.org/indicator/NY.GDP.PCAP.CD?end=2021&name_desc=true&start=2021)**, the data selected include countries broken by global regions and six income levels. Each country has a measurement for and ***GDP***: <br>
    - ***GDP*** is the sum of gross value added by all resident producers in the economy plus any product taxes and minus any subsidies not included in the value of the products.


## Questions Addressed

- The main question we will address is what are the most important productive capacity and technological capacity features that a government should invest in to increase their ***GDP***.<br>
- Another question we address is how do productive capacity and technological capacity features differ between countries in different regions of the world.


## Descriptions of Machine Learning Model Methodology

Using **Multivariate Linear Regression** and **Random Forest Classifiers** to analyze relationships in ***GDP*** factors.

### Description of Preliminary Data Preprocessing:

  * Our preliminary data preprocessing began with viewing how we could connect our four data tables. Our first data table, World development indicators ***(WDI)***, provided us with a country code ***(CC)*** field that we could use to identify the rest of our data tables going forward. Using Excel’s INDEX MATCH function, I was able to append the ***(CC)*** field onto our PCI and FTRI tables. Our tables had to be converted into CSV files from XLS format.<br>

  [Data Table Schema](Resources/Images/Database_Schema.png)
  <br><sub>Data Table Schema</sub><br>

  Finally, before importing into Jupyter we had to convert our files into UTF-8-character encoding using a simple work around in Notepad. Our data tables were relatively clean as they have been prepared by two reputable international organizations that focus on world economic data collection, and thus we were able to simply drop nulls using pandas.


### Description of Preliminary Feature Engineering and Preliminary Feature Selection, Including Decision-Making Process:

  * For our preliminary feature engineering we chose to use a correlation matrix heatmap to help visualize the relationship between our numerical values.<br>

  [Correlation Matrix Heatmap](Resources/Images/Correlation_Matrix.png)
  <br><sub>Correlation Matrix Heatmap</sub><br>

  We did find that two fields that are overall composites of our ***PCI*** and ***FTRI*** fields were heavily correlated with all our other fields. We dropped our ***(CC)*** field for our analysis as it is simply a duplicate identifier for our *"economy"* field.
 

### Description of How Data was Split Into Training and Testing Sets:

  * For our **multivariate linear regression model**, it was important to split our data into training and testing sets as it is necessary for supervised machine learning. It will first use the training set to learn, and then use the testing set to assess its performance. For our purposes we split our data into *X* and *y* in order to be able to predict our target of ***GDP in millions***. These *X* and *y* values were then split again into training and testing sets. By splitting our data this way, we will be able to ensure that our model has a way to evaluate the predictions it calculates.


### Explanation of Model Choice, Including Limitations and Benefits:

  * For our first model we chose a **multivariate linear regression**, as this model will help form the basis for a predictive analysis tool. The final model will help countries determine how investments or losses in certain features will impact their ***GDP*** growth. Our next model will be a **random forest classifier**, as it can identify which features have the greatest impact on our target in. In our case the target is ***GDP***, and thus our model help give countries an idea of what economic features to invest in and safeguard the most. Some limitations of our models is that they will not be able to take in all our features. Machine learning requires zero null values which meant that some countries with incomplete economic data will not be able to be part of our model.


### Description of how the model has been trained thus far:

  * **Mulitvariate Linear Regression** was utilized on all fifteen features for *X* and *gdp_usdollars_millions* for *y* to find the Actual Value vs Difference in Actual and Predicted Values. This was how the model was first trained. The second way the model was trained was by utilizing the **Random Forest Classifiers** method. This was done to gain more information from the data and increase the training/testing scores.


### Machine Learning Model Scores:

  * The **mulitvariate linear regression** model produced a training score of: 0.97, and a testing score of: 0.98.

  [MLR Testing and Training Scores](Resources/Images/MLR-Model1_TestTraining_Scores.png)
  <br><sub>MLR Testing and Training Scores</sub><br>

  * The **Random Forest Classifier** model produced a training score of: 1.0, and a testing score of: 1.0.

  [RF Testing and Training Scores](Resources/Images/Random_Forest_TrainingTesting_Scores.png)
  <br><sub>RF Testing and Training Scores<sub><br>


## Links to Presentation Slides, Dashboard and Collaborator text file:

 - [Link](https://docs.google.com/presentation/d/1Jcp-525SAy1fqANWJpyrW5gBkoJuHJ20XVnxLsWbyDU/edit?usp=sharing) to Presentation Slides

 - [Link](https://public.tableau.com/views/CountriesGDPinrelationtoProductivityandTechnicalCapac[…]e=en-US&publish=yes&:display_count=n&:origin=viz_share_link) to interactive element of Dashboard. (Mockup and not final Dashboard)

 - [File of Collaborators](Resources/Collaborators.txt) and what they have worked on. File kept separate to ease in editing.


#### For Collaborators

[Link](https://docs.google.com/document/d/1Vm8NXSvze7SAoavksqqIHmA6JsNCXIDlXo6HZoT_XlA/edit?usp=sharing) to editable Segment 3 Rubric Checklist.

