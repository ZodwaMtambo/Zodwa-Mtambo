
-- which province has the highest average financial stress 
SELECT province, AVG(financial_stress_score)
FROM sa_Financial_data. households
GROUP BY province
ORDER BY AVG(financial_stress_score) DESC; 

-- what is the average income by education level
SELECT  education_level,  AVG(monthly_income)
FROM sa_financial_data. households 
GROUP BY  education_level ;

-- How many households does not have electricity per province 
SELECT province, COUNT(*) AS no_electricity_households
FROM households
WHERE has_electricity = 'NO'
GROUP BY province;

-- Who spends more than they earn?
SELECT household_id, province, monthly_income, monthly_expenses
FROM households
WHERE monthly_expenses > monthly_income;































