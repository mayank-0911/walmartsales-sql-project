#3

WITH CustomerSpending AS (
  SELECT
    customer_id,
    SUM(total) AS total_spending
  FROM
    walmartsales
  GROUP BY
    customer_id
)

SELECT
  customer_id,
  total_spending,
  CASE
    WHEN total_spending > (SELECT AVG(total_spending) * 1.5 FROM CustomerSpending) THEN 'High Spender'
    WHEN total_spending > (SELECT AVG(total_spending) FROM CustomerSpending) THEN 'Medium Spender'
    ELSE 'Low Spender'
  END AS spending_tier
FROM
  CustomerSpending;