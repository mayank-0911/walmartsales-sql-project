#7

SELECT
  customer_type,
  product_line,
  SUM(total) AS total_sales
FROM
  walmartsales
GROUP BY
  customer_type, product_line
ORDER BY
  customer_type, total_sales DESC;