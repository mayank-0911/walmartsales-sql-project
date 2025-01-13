#9

SELECT
  customer_id,
  SUM(total) AS total_sales
FROM
  walmartsales
GROUP BY
  customer_id
ORDER BY
  total_sales DESC
LIMIT 5;