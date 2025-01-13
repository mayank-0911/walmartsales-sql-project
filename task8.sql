#8

WITH CustomerPurchases AS (
  SELECT
    customer_id,
    MIN(date) AS first_purchase,
    MAX(date) AS last_purchase
  FROM
    walmartsales
  GROUP BY
    customer_id
)

SELECT
  customer_id,
  first_purchase,
  last_purchase,
  DATEDIFF(last_purchase, first_purchase) AS days_between_purchases
FROM
  CustomerPurchases
WHERE
  DATEDIFF(last_purchase, first_purchase) <= 50;