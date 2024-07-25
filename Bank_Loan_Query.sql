SELECT * FROM [Bank_Loan_DB].[dbo].[bank_loan_data]
SELECT COUNT(id) as Total_Loan_application from [Bank_Loan_DB].[dbo].[bank_loan_data]
SELECT COUNT(id) as Total_Loan_application from [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=12
SELECT COUNT(id) as Total_Loan_application from [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=11
SELECT sum(loan_amount) as Total_Funded_Amount  from [Bank_Loan_DB].[dbo].[bank_loan_data]
SELECT sum(loan_amount) as Total_Funded_Amount  from [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=12
SELECT sum(loan_amount)AS Total_Funded_Amount  from [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=11
SELECT sum(total_payment) AS Total_Amount_Collected  from [Bank_Loan_DB].[dbo].[bank_loan_data]
SELECT sum(total_payment) AS Total_Amount_Collected  from [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=12
SELECT sum(total_payment) AS Total_Amount_Collected  from [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=11
select AVG(int_rate)*100 FROM [Bank_Loan_DB].[dbo].[bank_loan_data]
select AVG(int_rate)*100 FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=12
select AVG(int_rate)*100 FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=11
select AVG(dti)*100 FROM [Bank_Loan_DB].[dbo].[bank_loan_data]
select AVG(dti)*100 FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=12
select AVG(dti)*100 FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where MONTH(issue_date)=11
select (COUNT(case when loan_status='Fully Paid' or loan_status='Current' then id End )*100.0)/COUNT(id) as good_loan_perc  FROM [Bank_Loan_DB].[dbo].[bank_loan_data]
select  COUNT(id) as Good_loan_Application FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where loan_status='Fully Paid' or loan_status='Current';
select  sum(loan_amount) as Good_loan_Application FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where loan_status='Fully Paid' or loan_status='Current';
select  sum(total_payment) as Good_loan_Application FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where loan_status='Fully Paid' or loan_status='Current';
select (COUNT(case when loan_status='Charged Off' then id End )*100.0)/COUNT(id) as bad_loan_perc  FROM [Bank_Loan_DB].[dbo].[bank_loan_data]
select  COUNT(id) as bad_loan_Application FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where loan_status='Charged Off'  ;
select  sum(loan_amount) as bad_loan_Application FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where loan_status='Charged Off' ;
select  sum(total_payment) as bad_loan_Application FROM [Bank_Loan_DB].[dbo].[bank_loan_data] where loan_status='Charged Off';
SELECT 
loan_status, 
count(id) as loanCount,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_Recevied_amount,
avg(int_rate)*100 as intereset,
avg(dti)*100 as DTI
FROM [Bank_Loan_DB].[dbo].[bank_loan_data]
group by loan_status
SELECT 
loan_status, 
sum(loan_amount) as MTD_Total_funded_amount,
sum(total_payment) as MTD_Total_Recevied_amount
FROM [Bank_Loan_DB].[dbo].[bank_loan_data]
where MONTH(issue_date)=12
group by loan_status
---BANK LOAN REPORT 
select 
Month(issue_date) as Month_number,
DATENAME(Month,issue_date) as Month_name,
count(id) as loanCount,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_Recevied_amount
FROM [Bank_Loan_DB].[dbo].[bank_loan_data]
group by Month(issue_date),DATENAME(Month,issue_date)
order by Month(issue_date)

select address_state as State,count(id) as loanCount,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_Recevied_amount from [Bank_Loan_DB].[dbo].[bank_loan_data]
group by address_state
order by address_state 

---Term
SELECT term as Term,
count(id) as Total_Loan_Application ,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_recived_amount
FROM [Bank_Loan_DB].[dbo].[bank_loan_data] 
group by term;

select 
 emp_length as Employee_length,
count(id) as Total_Loan_Application ,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_recived_amount
FROM [Bank_Loan_DB].[dbo].[bank_loan_data] 
group by emp_length 
order by emp_length
select 
 purpose as Purpose,
count(id) as Total_Loan_Application ,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_recived_amount
FROM [Bank_Loan_DB].[dbo].[bank_loan_data] 
group by purpose 
order by purpose
select 
 home_ownership as Home_ownership,
count(id) as Total_Loan_Application ,
sum(loan_amount) as Total_funded_amount,
sum(total_payment) as Total_recived_amount
FROM [Bank_Loan_DB].[dbo].[bank_loan_data] 
group by home_ownership 
order by home_ownership

SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
WHERE grade = 'A'
GROUP BY purpose
ORDER BY purpose
