Olympics Athletes Data Analysis with SQL

Project Overview
This project demonstrates SQL-based data analysis using an Olympics Athletes Dataset containing information about athletes, countries, sports, medals, and performance metrics. The objective of this project is to practice and showcase intermediate to advanced SQL skills such as aggregations, subqueries, window functions, ranking, and analytical queries.
The dataset contains 8,500 records and 30 columns, providing a rich source for exploring athlete demographics, medal distributions, country performance, and sport-specific insights.
This project is designed for data analyst portfolio development and for practicing SQL queries commonly used in real-world analytics and technical interviews.

Dataset Description
The dataset includes detailed information about Olympic athletes. Some key fields include:
•	athlete_name – Name of the athlete
•	age – Age of the athlete
•	gender – Gender of the athlete
•	country_name – Country represented by the athlete
•	sport – Sport category
•	event – Specific Olympic event
•	height_cm – Athlete height in centimeters
•	total_medals_won – Total medals won by the athlete
•	total_olympics_attended – Number of Olympic games attended
•	medal – Medal type (Gold, Silver, Bronze)
•	is_record_holder – Indicates whether the athlete holds a record

Project Objectives
The main goals of this project are:
•	Practice intermediate to advanced SQL queries
•	Analyze athlete performance and medal distribution
•	Explore country-level Olympic performance
•	Demonstrate data analytics skills using SQL
•	Build a portfolio-ready SQL project

SQL Concepts Used
This project covers several important SQL concepts used in data analytics and business intelligence, including:
•	SELECT and filtering
•	Aggregation functions (COUNT, SUM, AVG)
•	GROUP BY and HAVING
•	Subqueries
•	Window functions
•	Ranking functions (RANK, ROW_NUMBER)
•	Partitioning with OVER()
•	Analytical calculations

Example Analytical Questions
Some of the analytical questions explored in this project include:
1.	Which countries have the highest total Olympic medals?
2.	Who are the top athletes based on total medals won?
3.	What is the average age of athletes by country?
4.	Which sports have the highest number of participants?
5.	Who are the top 3 athletes in each sport based on medals?
6.	Which athletes performed better than the average medal count?
7.	What is the cumulative medal count by country?
8.	Which athletes participated in more Olympics than average?
9.	Who are the youngest athletes in each sport?
10.	What percentage of total medals belongs to each country?

Key SQL Analyses
1. Ranking Athletes by Medals
Athletes are ranked based on their total medals using window functions.
2. Sport-Level Performance Analysis
Identifying the top-performing athletes in each sport.
3. Country-Level Medal Analysis
Calculating total and cumulative medals for each country.
4. Demographic Insights
Analyzing age, gender distribution, and height differences among athletes.

Tools Used
•	SQL (MySQL)
•	Dataset stored in a relational table: olympics_athletes_dataset

Project Structure
Olympics-SQL-Analysis
│
├── dataset
│   └── olympics_athletes_dataset.csv
│
├── queries
│   └── olympics_analysis.sql
│
└── README.md

Key Insights (Example)
Some insights that can be derived from this dataset include:
•	Countries with the highest Olympic medal dominance
•	Top-performing athletes across different sports
•	Sports with the largest athlete participation
•	Athlete performance compared with sport averages

Future Improvements
Possible extensions of this project include:
•	Building Power BI or Tableau dashboards
•	Creating predictive models for medal outcomes
•	Performing trend analysis across Olympic years
•	Integrating multiple Olympic datasets

Conclusion
This project demonstrates how SQL can be used to analyze sports performance data and generate meaningful insights. It highlights the importance of analytical SQL techniques in real-world data analysis and serves as a strong portfolio project for aspiring data analysts.

Author: 
Projit Mondol
Data Analysis | SQL | Power BI | Python | Economic & Development Analytics

