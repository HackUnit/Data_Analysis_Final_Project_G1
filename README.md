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

  * For our first model we chose a multivariate linear regression, as this model will help form the basis for a predictive analysis tool. The final model will help countries determine how investments or losses in certain features will impact their GDP growth. Our next model will be a random forest classifier, as it can identify which features have the greatest impact on our target in. In our case the target is GDP, and thus our model help give countries an idea of what economic features to invest in and safeguard the most. 


