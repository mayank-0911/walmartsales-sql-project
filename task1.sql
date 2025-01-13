#1

WITH MonthlySales AS (
  SELECT
    branch,
    DATE_FORMAT(date, '%Y-%m') AS month,
    SUM(total) AS total_sales
  FROM walmartsales
  GROUP BY branch, month
)

SELECT
  branch,
  (MAX(total_sales) - MIN(total_sales)) / MIN(total_sales) * 100 AS growth_rate
FROM MonthlySales
GROUP BY branch
ORDER BY growth_rate DESC
LIMIT 1;