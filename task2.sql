use scorch;
alter table walmartsales change column `Tax 5%` `tax_5%` varchar(255)
select * from walmartsales

#2

SELECT
    branch,
    product_line,
    SUM(gross_income - cogs) AS total_profit
FROM
    walmartsales
GROUP BY
    branch, product_line
ORDER BY
    branch, total_profit DESC;