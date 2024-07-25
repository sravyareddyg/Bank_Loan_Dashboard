# Bank_Loan_Dashboard_Analysis

### Objective

This Bank Loan Report Dashboard represents a fusion of advanced SQL techniques and Power BI functionalities, showcasing expertise in data analysis, modeling, and visualization. Leveraging a robust SQL Server database backend and the powerful capabilities of Power BI, this project demonstrates a professional and skilled approach to data analytics.

### Dashboard Link : https://app.powerbi.com/view?r=eyJrIjoiOTVlOTc4Y2EtMmE0MC00YzE3LWFlNGMtY2E3ZWVlOTgyZGE5IiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9

## Tool Used
* Power BI,
* SQL,
* Excel,
* Data visualization,
* statistics,
* Data Cleaning,
* Power Query,
* Data Visualization,
* Statistical Analysis,

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
### 4.Data Modeling and Relationship Creation:
Data modeling was performed within Power BI to create relationships between the relevant tables in the SQL database. This step ensured that the data could be properly analyzed and visualized.
### 5.Data Cleaning and Transformation:
Power BI's data transformation features, such as Power Query, were utilized to clean and transform the data. Irrelevant entries, duplicates, and inconsistencies were removed or resolved, ensuring the data was accurate and reliable.
### 6. Visualizations and Formatting:
Utilizing Power BI's diverse range of visualization options and formatting features enhances the dashboard's aesthetics and usability. Customizing visuals, such as bar charts, line charts, and tree maps, ensures clarity and effectiveness in conveying information
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
### Dashboard 2 : overview
### Problem Statement
### Charts
#### 1.Monthly Trends by Issue Date (Line Chart):  
To identify seasonality and long-term trends in lending activities.
#### 2.Regional Analysis by State (Filled Map):
To identify regions with significant lending activity and assess regional disparities
#### 3.Loan Term Analysis (Donut Chart): 
To allow the client to understand the distribution of loans across various term lengths.
#### 4.Employee Length Analysis (Bar Chart):
How lending metrics are distributed among borrowers with different employment lengths, helping us assess the impact of employment history on loan applications.
#### 5.Loan Purpose Breakdown (Bar Chart): 
Will provide a visual breakdown of loan metrics based on the stated purposes of loans, aiding in the understanding of the primary reasons borrowers seek financing.
#### 6.Home Ownership Analysis (Tree Map): 
For a hierarchical view of how home ownership impacts loan applications and disbursements.

    Metrics to be shown: 'Total Loan Applications,' 'Total Funded Amount,' and 'Total Amount Received'
## Dashboard 3 : Details 
### Problem Statement
### Grid
 Need for a comprehensive 'Details Dashboard' that provides a consolidated view of all the essential information within our loan data. This Details Dashboard aims to offer a holistic snapshot of key loan-related metrics and data points, enabling users to access critical information efficiently.
### Objective:
The primary objective of the Details Dashboard is to provide a comprehensive and user-friendly interface for accessing vital loan data. It will serve as a one-stop solution for users seeking detailed insights into our loan portfolio, borrower profiles, and loan performance.

## SQL Queries for Effective Bank Loan Testing

### KPI’s:
#### Total Loan Applications
    SELECT COUNT(id) as Total_Loan_application from [Bank_Loan_DB].[dbo].[bank_loan_data]

![Bank Loan Testing](https://github.com/user-attachments/assets/14e5aa6a-0b87-4103-9f63-320b6f7ea899)
  
#### MTD Loan Applications
    SELECT COUNT(id) as MTD_Total_Loan_application from [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=12

![Bank Loan Testing](https://github.com/user-attachments/assets/539893de-d3f0-405d-aa21-39d9aad32c29)

#### PMTD Loan Applications
    SELECT COUNT(id) as PMTD_Total_Loan_application from [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=11

![Bank Loan Testing](https://github.com/user-attachments/assets/8227fcdf-66d2-4df2-9a17-a2544c32e23b)

#### Total Funded Amount
    SELECT sum(loan_amount) as Total_Funded_Amount  from [Bank_Loan_DB].[dbo].[bank_loan_data]

![Bank Loan Testing](https://github.com/user-attachments/assets/e1f4cd29-d172-484e-a6b2-df00bd4f97bf)

#### MTD Funded Amount
    SELECT sum(loan_amount) as MTD_Total_Funded_Amount  from [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=12

![Bank Loan Testing](https://github.com/user-attachments/assets/6951f038-7ed3-4324-9c22-d7fc0af82a8d)

#### PMTD Funded Amount
    SELECT sum(loan_amount) as PMTD_Total_Funded_Amount  from [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=11

![Bank Loan Testing](https://github.com/user-attachments/assets/28495c1e-47d2-4a22-88fb-c0d68aa7ff93)

#### Total Amount Received
    SELECT sum(total_payment) AS Total_Amount_Collected  from [Bank_Loan_DB].[dbo].[bank_loan_data]

![Bank Loan Testing](https://github.com/user-attachments/assets/b53bb58f-4073-46a8-a623-d4c6aff0c868)
#### MTD Amount Received
    SELECT sum(total_payment) AS MTD_Total_Amount_Collected  from [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=12

![Bank Loan Testing](https://github.com/user-attachments/assets/229d0be0-ce71-478f-86c8-5950873cd735)
#### PMTD Total Amount Received
    SELECT sum(total_payment) AS PMTD_Total_Amount_Collected  from [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=11

![Bank Loan Testing](https://github.com/user-attachments/assets/d35c022d-8b41-45c2-b5f9-4370cbfaf028)
#### Average Interest Rate
    select AVG(int_rate)*100 AS Avg_Int_Rate FROM [Bank_Loan_DB].[dbo].[bank_loan_data]

![Bank Loan Testing](https://github.com/user-attachments/assets/0e5d18df-24ea-41b2-a639-453fc1cfc261)
#### MTD Average Interest Rate
    select AVG(int_rate)*100 AS Avg_Int_Rate FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=12

![Bank Loan Testing](https://github.com/user-attachments/assets/4b19de1b-8795-42ca-8677-369dd1c0afe3)
#### PMTD Average Interest Rate
    select AVG(int_rate)*100 AS Avg_Int_Rate FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=11

![Bank Loan Testing](https://github.com/user-attachments/assets/21602f51-5012-42af-a5f6-ee08a51b73d3)

#### Avg DTI
    select AVG(dti)*100 AS Avg_DTI FROM [Bank_Loan_DB].[dbo].[bank_loan_data]
![Bank Loan Testing](https://github.com/user-attachments/assets/7b5a688e-2c56-4e0c-bcdd-4a978baf8b8e)
#### MTD Avg DTI
    select AVG(dti)*100 AS Avg_DTI FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=12
![Bank Loan Testing](https://github.com/user-attachments/assets/0f054802-b694-4488-b826-e125cf5dad00)
#### PMTD Avg DTI
    select AVG(dti)*100 AS Avg_DTI FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=11
![Bank Loan Testing](https://github.com/user-attachments/assets/6e03f4f2-e3dd-4ab6-96b7-1bdc3d849a5e)

#### GOOD LOAN ISSUED
    select (COUNT(case when loan_status='Fully Paid' or loan_status='Current' then id End )*100.0)/COUNT(id) as good_loan_percentage  FROM [Bank_Loan_DB].[dbo].[bank_loan_data]
![Bank Loan Testing](https://github.com/user-attachments/assets/97ddd403-db1a-4e98-b163-a40692524856)

#### Good Loan Applications
    select  COUNT(id) as Good_loan_Application FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where loan_status='Fully Paid' or loan_status='Current';
![Bank Loan Testing](https://github.com/user-attachments/assets/7f8e081c-2075-4783-8eda-ab9a3d9c9c3e)

#### Good Loan Funded Amount
    select  sum(loan_amount) as Good_Loan_Funded_amount FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where loan_status='Fully Paid' or loan_status='Current';
![Bank Loan Testing](https://github.com/user-attachments/assets/74287c21-08c2-4b29-af61-4508fff0353c)

#### Good Loan Amount Received
    select  sum(total_payment) as Good_Loan_Amount_Received FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where loan_status='Fully Paid' or loan_status='Current';
![Bank Loan Testing](https://github.com/user-attachments/assets/6cf988b0-5a84-4ab5-b2e1-f5f8ebdbfecf)
### BAD LOAN ISSUED
#### Bad Loan Percentage
    select (COUNT(case when loan_status='Charged Off' then id End )*100.0)/COUNT(id) as bad_loan_percentage  FROM [Bank_Loan_DB].[dbo].[bank_loan_data]
![Bank Loan Testing](https://github.com/user-attachments/assets/a7a45ae0-073a-4ef0-97f5-15c33e50c101)
#### Bad Loan Applications
    select  COUNT(id) as bad_loan_Application FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where loan_status='Charged Off';
![Bank Loan Testing](https://github.com/user-attachments/assets/4b9cb366-dedf-4bc4-ae19-19bec565ce64)
#### Bad Loan Funded Amount
    select  sum(loan_amount) as Bad_Funded_amount FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where loan_status='Charged Off' ;
![Bank Loan Testing](https://github.com/user-attachments/assets/f4cadd4d-110e-4ca6-a958-abdb0aacbaba)
#### Bad Loan Amount Received
    select  sum(total_payment) as Bad_Loan_Amount_Received FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where loan_status='Charged Off';
![Bank Loan Testing](https://github.com/user-attachments/assets/557613df-1d7b-4f87-9bde-9eb6a75ffae5)  
## LOAN STATUS
    SELECT loan_status, count(id) as loanCount,sum(loan_amount) as Total_funded_amount,sum(total_payment) as Total_Recevied_amount,avg(int_rate)*100 as intereset,avg(dti)*100 as DTI FROM [Bank_Loan_DB].[dbo].[bank_loan_data]group by loan_status

![Bank Loan Testing](https://github.com/user-attachments/assets/e7b2b7fe-62e1-4abf-90f8-e093e132eedd)
### State
    SELECT loan_status, sum(loan_amount) as MTD_Total_funded_amount,sum(total_payment) as MTD_Total_Recevied_amount FROM [Bank_Loan_DB].[dbo].[bank_loan_data]where MONTH(issue_date=12group by loan_status
![Bank Loan Testing](https://github.com/user-attachments/assets/bf59268d-37b6-42ef-9958-40247ce038de)  
## B. BANK LOAN REPORT | OVERVIEW
#### MONTH
    select Month(issue_date) as Month_number,DATENAME(Month,issue_date) as Month_name,count(id) as loanCount,sum(loan_amount) as Total_funded_amount,sum(total_payment) as Total_Recevied_amountFROM [Bank_Loan_DB].[dbo].[bank_loan_data] group by Month(issue_date),DATENAME(Month,issue_date) order by Month(issue_date)
![Bank Loan Testing](https://github.com/user-attachments/assets/f3f44af1-7c7a-4099-a771-6780fbc395f8)
#### STATE
    select address_state as State,count(id) as loanCount,sum(loan_amount) as Total_funded_amount,sum(total_payment) as Total_Recevied_amount from [Bank_Loan_DB].[dbo].[bank_loan_data] group by address_state order by address_state
![Bank Loan Testing](https://github.com/user-attachments/assets/e46d8ce3-4374-4be3-a4d7-b9f3c366a62e)
#### TERM
    SELECT term as Term,count(id) as Total_Loan_Application ,sum(loan_amount) as Total_funded_amount,sum(total_payment) as Total_recived_amountFROM [Bank_Loan_DB].[dbo].[bank_loan_data] group by term;
![Bank Loan Testing](https://github.com/user-attachments/assets/c5fe2998-7c06-43fe-9019-6f235f640c10)
#### EMPLOYEE LENGTH
    select emp_length as Employee_length,count(id) as Total_Loan_Application ,sum(loan_amount) as Total_funded_amount,sum(total_payment) as Total_recived_amountFROM [Bank_Loan_DB].[dbo].[bank_loan_data] group by emp_length order by emp_length 
![Bank Loan Testing](https://github.com/user-attachments/assets/89fc3843-4f03-424e-be1d-e6e3ae261ddb)
#### PURPOSE
    select purpose as Purpose,count(id) as Total_Loan_Application ,sum(loan_amount) as Total_funded_amount,sum(total_payment) as Total_recived_amountFROM [Bank_Loan_DB].[dbo].[bank_loan_data] group by purpose order by purpose
![Bank Loan Testing](https://github.com/user-attachments/assets/a26982fd-7460-40ec-b255-e167555ab661)
#### HOME OWNERSHIP
    select home_ownership as Home_ownership,count(id) as Total_Loan_Application ,sum(loan_amount) as Total_funded_amount,sum(total_payment) as Total_recived_amount FROM [Bank_Loan_DB].[dbo].[bank_loan_data] group by home_ownership order by home_ownership
![Bank Loan Testing](https://github.com/user-attachments/assets/35cc4cbe-a3f4-4c36-a45e-a519f76a5b7b)
#### Grade A
    SELECT purpose AS PURPOSE, COUNT(id) AS Total_Loan_Applications,SUM(loan_amount) AS Total_Funded_Amount,SUM(total_payment) AS Total_Amount_Received FROM [Bank_Loan_DB].[dbo].[bank_loan_data] WHERE grade = 'A' GROUP BY purposeORDER BY purpose
![Bank Loan Testing](https://github.com/user-attachments/assets/2891dd90-1105-4a52-86f0-1bed7dace323)



## Conclusion
The creation of the three dashboards (Summary, Overview and Details) equips users with a comprehensive view of the Bank Loan from different perspectives.


With the inclusion of robust data validation techniques, the Bank Loan Dashboard project stands as a reliable and authoritative source for monitoring the bank’s loan activities. 

The project not only presents critical data through intuitive visualizations but also guarantees the precision of the information displayed, enabling the bank to make informed and assured strategic decisions.
