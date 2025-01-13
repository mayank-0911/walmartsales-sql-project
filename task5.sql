#5

SELECT
  city,
  payment,
  COUNT(*) AS transaction_count
FROM
  walmartsales
GROUP BY
  city, payment
