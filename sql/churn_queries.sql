SELECT churn, COUNT(*) AS total_customers
FROM customers
GROUP BY churn;

SELECT churn, AVG(tenure) AS avg_tenure
FROM customers
GROUP BY churn;

SELECT churn, AVG(monthlycharges) AS avg_monthly_charges
FROM customers
GROUP BY churn;

SELECT churn, AVG(totalcharges) AS avg_total_charges
FROM customers
GROUP BY churn;

SELECT contract,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM customers
GROUP BY contract;
