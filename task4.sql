#4

WITH AvgSales AS (
  SELECT
    product_line,
    AVG(total) AS avg_total
  FROM
    walmartsales
  GROUP BY
    product_line
)

SELECT
  *,
  CASE
    WHEN total > avg_total * 2 THEN 'High Anomaly'
    WHEN total < avg_total * 0.5 THEN 'Low Anomaly'
    ELSE 'Normal'
  END AS anomaly_type
FROM
  walmartsales
JOIN AvgSales ON walmartsales.product_line = AvgSales.product_line;