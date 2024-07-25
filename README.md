
# Analysis_Bank_Loan_Dashboard 

### Objective

This Bank Loan Report Dashboard represents a fusion of advanced SQL techniques and Power BI functionalities, showcasing expertise in data analysis, modeling, and visualization. Leveraging a robust SQL Server database backend and the powerful capabilities of Power BI, this project demonstrates a professional and skilled approach to data analytics.

### Dashboard Link : https://app.powerbi.com/view?r=eyJrIjoiOTVlOTc4Y2EtMmE0MC00YzE3LWFlNGMtY2E3ZWVlOTgyZGE5IiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9

## Tool Used
Power BI, SQL, Excel, Data visualization, statistics, Data Cleaning, Power Query, Data Visualization, Statistical Analysis,

## Advanced SQL Functions Utilized:

### 1. Database Creation and Management: 

Creating a well-structured database schema in SQL Server ensures efficient data storage and retrieval. Utilizing advanced SQL commands like CREATE TABLE, SELECT, GROUP BY, and ORDER BY facilitates database management and query optimization.

### 2. Data Manipulation and Analysis:

Leveraging SQL functions such as DATEPART, CAST, and DECIMAL enables precise data manipulation and analysis. Techniques like Common Table Expressions (CTEs) and window functions enhance query performance and simplify complex data operations.

### 3. Aggregation and Reporting: 

Utilizing SQL functions like COUNT, SUM, and DISTINCT enables aggregation of loan data for reporting purposes. Employing partitioning and grouping techniques ensures accurate calculation of loan metrics and KPIs.


## Advanced Power BI Functions Utilized:

### 1.Data Cleaning and Modeling: 

Extensive use of Power Query for data cleaning and transformation ensures the accuracy and reliability of the dataset. Advanced data modeling techniques, including establishing relationships and creating calculated columns using DAX (Data Analysis Expressions), facilitate insightful analysis.

### 2.Time Intelligence Functions: 

Employing Power BI's time intelligence functions enables dynamic analysis of loan trends over time, such as month-over-month changes and year-over-year comparisons, enhancing decision-making capabilities.

### 3.Creating Key Performance Indicators(KPIs): 
Developing custom KPIs using DAX functions like CALCULATE and SUMX allows for the precise measurement of loan-related metrics, providing actionable insights into performance and trends.

### 4. Visualizations and Formatting:

Utilizing Power BI's diverse range of visualization options and formatting features enhances the dashboard's aesthetics and usability. Customizing visuals, such as bar charts, line charts, and tree maps, ensures clarity and effectiveness in conveying information
 
## SQL Queries for Effective Bank Loan Testing

### KPI’s:
#### Total Loan Applications
    SELECT COUNT(id) as Total_Loan_application from [Bank_Loan_DB].[dbo].[bank_loan_data]

![]("https://github.com/user-attachments/assets8701c0be-99ca-4ca2-b9eb-cd3e4316f19a")  

## Dashboards
## Dashboard 1 : Summary

The Summary Dashboard captures key loan-related metrics and their changes over time, providing a snapshot of the loan portfolio's health and lending strategy impact. It includes the following KPIs:

### Problem Statement:
Total Loan Applications (MTD and MoM),
Total Funded Amount (MTD and MoM),
Total Amount Received (MTD and MoM),
Average Interest Rate (MTD and MoM),
Average Debt-to-Income Ratio (DTI) (MTD and MoM)

Additionally, it distinguishes between 'Good Loans' and 'Bad Loans,' with specific indicators for each category, helping in the assessment of loan portfolio quality.
#### Loan Status Grid View
In order to gain a comprehensive overview of our lending operations and monitor the performance of loans, we aim
to create a grid view report categorized by 'Loan Status.’ By providing insights into metrics such as 'Total Loan
Applications,' 'Total Funded Amount,' 'Total Amount Received,' 'Month-to-Date (MTD) Funded Amount,' 'MTD
Amount Received,' 'Average Interest Rate,' and 'Average Debt-to-Income Ratio (DTI),' this grid view will empower us
to make data-driven decisions and assess the health of our loan portfolio.



