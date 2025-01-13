#10

SELECT
  DAYNAME(date) AS day_of_week,
  SUM(total) AS total_sales
FROM
  walmartsales
GROUP BY
  DAYNAME(date)
ORDER BY
  total_sales DESC;