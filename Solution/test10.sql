USE cryptopunk;

SELECT month_and_year,name, max_sold FROM
(SELECT DATE_FORMAT(event_date, '%M/%Y') AS month_and_year, MAX(usd_price) as max_sold
FROM pricedata
GROUP BY  month_and_year) AS result_table
JOIN pricedata ON
result_table.max_sold = pricedata.usd_price;


