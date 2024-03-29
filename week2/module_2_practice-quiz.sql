--1. For all the questions in this practice set, you will be using the Salary by Job Range Table. This is a single table titled: salary_range_by_job_classification.
SELECT
*
FROM salary_range_by_job_classification

--2. Find the distinct values for the extended step. The code has been started for you, but you will need to program the third line yourself before running the query.
SELECT 
DISTINCT Extended_step
FROM salary_range_by_job_classification

--3. Excluding $0.00, what is the minimum bi-weekly high rate of pay (please include the dollar sign and decimal point in your answer)? The code has been started for you, but you will need to add onto the last line of code to get the correct answer.
SELECT
MIN(Biweekly_high_Rate)
FROM salary_range_by_job_classification
WHERE Biweekly_high_Rate <> '$0.00'

--4. What is the maximum biweekly high rate of pay (please include the dollar sign and decimal point in your answer)? The code has been started for you, but you will need to add onto the last line of code to get the correct answer.
SELECT 
MAX(Biweekly_high_Rate) 
FROM salary_range_by_job_classification

--5. Question 5
What is the pay type for all the job codes that start with '03'? The code has been started for you, but you will need to program the fourth and fifth lines yourself before running the query.
SELECT
job_code
,pay_type
FROM salary_range_by_job_classification
WHERE job_code LIKE '03%'

--6. Run a query to find the Effective Date (eff_date) or Salary End Date (sal_end_date) for grade Q90H0? The code has been started for you, but you will need to program the third through the sixth lines yourself before running the query. 
SELECT
grade
,eff_date
,sal_end_date
FROM salary_range_by_job_classification
WHERE grade = 'Q90H0'

--7. Sort the Biweekly low rate in ascending order. There is no starter code, as you need to write and run the query on your own. Hint: there are 4 lines to run this query.
SELECT
Biweekly_Low_Rate
FROM salary_range_by_job_classification
ORDER BY Biweekly_Low_Rate ASC

--8. Write and run a query, with no starter code to answer this question: What Step are Job Codes 0110-0400? Hint: there are 6 lines to run this query.
SELECT
Step
,Job_Code
FROM salary_range_by_job_classification
WHERE Job_Code BETWEEN '0110' AND '0400'

--9. Write and run a query, with no starter code or hints to answer this question: What is the Biweekly High Rate minus the Biweekly Low Rate for job Code 0170?
SELECT
(Biweekly_High_Rate - Biweekly_Low_Rate) AS DIFF
,Job_Code
FROM salary_range_by_job_classification
WHERE Job_Code = '0170'

--10. Write and run a query, with no starter code or hints to answer this question: What is the Extended Step for Pay Types M, H, and D? 
SELECT
Extended_Step
,Pay_Type
FROM salary_range_by_job_classification
WHERE Pay_Type IN ('M', 'H', 'D')

--11. Write and run a query, with no starter code or hints to answer this question: What is the step for Union Code 990 and a Set ID of SFMTA or COMMN? 
SELECT
Step
,Union_Code
,SetID
FROM salary_range_by_job_classification
WHERE Union_Code = '990'AND (SetID = 'SFMTA' OR SetID = 'COMMN')