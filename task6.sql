#6

SELECT
  DATE_FORMAT(date, '%Y-%m') AS month,
  gender,
  SUM(total) AS total_sales
FROM
  walmartsales
GROUP BY
  DATE_FORMAT(date, '%Y-%m'), gender;