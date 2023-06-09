# Identify and Reduce Staff Turnover with Machine Learning

This project aims to address the issue of staff turnover in a retail company with over 200 stores and a factory. The client faced challenges due to fragmented data stored in different sources such as an ERP system, multiple Excel files, Word documents, and folders. The primary concern for the client is the exponential growth in staff turnover each year.

## I. Client Information

The client is a retail company with a large presence across multiple locations. Their primary challenge is high staff turnover rates, and they have struggled to manage this issue effectively due to the fragmented nature of their data. The project aims to leverage data analytics and machine learning techniques to identify patterns and factors contributing to staff turnover.

## II. ETL (Extract, Transform, Load)

The initial datasets consisted of five CSV files containing personal information of the employees, their performance history, and even data related to medical leave. To consolidate and organize the data, Python was utilized for data cleaning and categorization, while SQL was employed for performing various queries.

The output of the ETL process was a consolidated dataframe consisting of 19 variables aimed at explaining staff turnover.

## III. Machine Learning

Unsupervised learning techniques were employed in this project, as the dataset did not include labeled or target variables. The following steps were undertaken for the machine learning phase:

    Elbow Method: The Elbow method was used to determine the optimal number of clusters for the dataset. A screenshot of the Elbow method plot is provided below.

    K-Means Clustering: K-Means algorithm was employed to cluster the data into groups based on similarities. The optimal number of clusters determined through the Elbow method was used (seven clusters). A screenshot of the K-Means clustering results is provided below.
    
    
    ![image](https://github.com/jomape-iron/Final_project/assets/127798793/0a0ba1c0-fc6d-467a-bf3b-0d2ca3eb00ad)



## IV. Next Steps

The completion of this project marks the initial phase of identifying and understanding staff turnover patterns using machine learning. However, there are a few aspects to consider for further analysis and improvement:

    Things to Watch Out: During the analysis, certain factors might have emerged as potential contributors to staff turnover. These factors should be carefully monitored and validated to gain deeper insights.

    New Employees: Incorporating data on new employees and their characteristics can enhance the model's predictive capabilities. By analyzing this data, the client can identify early warning signs and take proactive measures to reduce turnover rates.
