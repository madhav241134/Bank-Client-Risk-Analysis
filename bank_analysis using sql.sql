use bank;
show tables;

# Write an SQL query to find the total number of records in the clinet table and the number of unique clients based on Client ID.
select * from clinet;
select count(*) from clinet;

SELECT COUNT(DISTINCT `Client ID`)
FROM clinet;

# Find the number of clients in each Risk Weighting category.

select `Risk Weighting`, count(*) from clinet group by `Risk Weighting`;

# Calculate the average Estimated Income for each occupation.

select occupation , avg(`Estimated Income`) as avg_estimated_salary from clinet group by occupation;

# Calculate the average Bank Loans and average Bank Deposits for each Risk Weighting category.

select `risk weighting`,round(avg(`Bank Loans`),2) as Bankloan_avg
 , round(avg(`Bank Deposits`),2) as Bankdeposit_avg from clinet
 group by `risk weighting`;
 
 # Find occupations whose average Estimated Income is greater than 50,000
 
 select * from clinet;
 
 select occupation , avg(`estimated income`) as estimated_avg from clinet group by occupation having estimated_avg > 50000;
 
 # Retrieve all client details for clients whose Risk Weighting is 4 or 5
 
 select * from clinet where `Risk Weighting` in (4,5);
 
 # Find the top 10 clients with the highest Estimated Income.
 
 
 select * from clinet order by `estimated income` desc limit 10;
 
 # Identify Client IDs that appear more than once and show their occurrence counts.
 
 select `client id` , count(`client id`) as count from clinet group by `client id` having count >1;
 
 # Find the number of clients in each Risk Weighting category for every Loyalty Classification.
 
 select `Risk Weighting`,`Loyalty Classification`,count(*) as count from clinet group by `Risk Weighting` , `Loyalty Classification` order by `Risk Weighting` asc;
 
 #Find clients whose Bank Loans are greater than their Bank Deposits. Display their names, loans, and deposits.
 
 select name,`bank loans` , `bank deposits` from clinet where `bank loans` > `bank deposits`;
 
 # Create a new column called Risk Category. Label Risk Weighting 4 and 5 as High Risk, and all other values as Other Risk.
 
 select * , case when `Risk weighting` in (4,5) then 'High Risk'
			else 'Other Risk' end as Risk_Category from  clinet;
            
            
# Rank clients by Estimated Income within each occupation, from highest to lowest.

select *, dense_rank() over(partition by occupation order by `estimated income` desc) as rnk from clinet;

# find the top 3 income ranks within each occupation

with highest as 
	(select *, dense_rank() over(partition by occupation order by `estimated income` desc) as rnk from clinet)
		select * from highest where rnk <=3;

# Display each client's name, occupation, Estimated Income, occupation-wise average income, and
# the difference between the client's income and the average.

with avgrage as (select *, avg(`estimated income`) over(partition by occupation) as avg_occupation from clinet)
select name , occupation , `estimated income` , avg_occupation , avg_occupation - `estimated income` as diff from avgrage;

# Generate a summary for each Risk Weighting category showing client count, average income,
# average bank loans, and average bank deposits. Add a readable risk label.
select * from clinet;

select `risk weighting` ,CASE 
		WHEN `Risk Weighting` = 1 THEN 'Very Low Risk'
        WHEN `Risk Weighting` = 2 THEN 'Low Risk'
        WHEN `Risk Weighting` = 3 THEN 'Medium Risk'
        WHEN `Risk Weighting` = 4 THEN 'High Risk'
        WHEN `Risk Weighting` = 5 THEN 'Very High Risk'
        ELSE 'Unknown'
		END AS Risk_Category,
			count(distinct `client id`) as clinet_count ,
			round(avg(`estimated income`),2) as avg_income ,
			round(avg(`bank loans`),2) as avg_bank_loans , 
            round(avg(`bank deposits`),2) as avg_bank_deposit 
            from clinet group by `risk weighting`;
	