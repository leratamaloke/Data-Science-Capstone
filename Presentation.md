Data Science Specialization Capstone Project
========================================================
author: Lerata Maloke
date: March 19, 2021
autosize: true

Objective
========================================================

Create a user-friendly Shiny app that predicts the next word for a text input.  

- Analyze text data from multiple sources (news, twitter, and blogs)
- Develop a model using the concepts of Natural Language Processing (NLP)  
- Create a prediction function that responds to user input and outputs a reasonable guess for the next word  

Model Development
========================================================

- Load data sources
- Clean the data (convert text to lower case, remove punctuation, remove numbers, remove URLs)
- Take a random sample to get a manageable data set
- Tokenize the data
- Create ngrams (n = 1-5)
- Create a dfm (document feature matrix) for each ngram
- Create a frequncy table for each ngram
- Manipulate the table to display 3 fields: key = (n-1) words of the ngram, value = last word of the ngram, frequency
- For each ngram, create a table that shows only the most common (highest frequency) value for each key  
  
R packages used in this project:  
- ngram, tm, readr, data.table, quanteda, RSQLite, stylo, tidyr  

Prediction Function
========================================================
Use a simple backoff model  

- clean the input text  
- find word count of text input  
- if word count > 4, trim to keep only the last 4 words  
- if word count = 4, match input to key in table5, return value 
- if no match, use last 3 words of input, attempt match to table4
- if no match, use last 2 words of input, attempt match to table3
- if no match, use last word of input, attempt match to table2
- if no match, return the most commonly used English word, "the"
- repeat same backoff steps for word count = 3, 2, 1


Shiny App
========================================================

To use the app, simply enter some text. The next word prediction will appear automatically.  

![alt text](AppScreenshot.png)


Resources
========================================================
- Shiny app: https://leratamaloke.shinyapps.io/PredictWord/
- Github project files: https://github.com/leratamaloke/DataScienceCapstone
- Milestone Report: http://rpubs.com/leratamaloke/741980
