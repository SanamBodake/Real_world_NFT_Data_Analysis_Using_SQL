USE cryptopunk;
SELECT month_and_year, MAX(sold)  AS most_sold FROM 
(SELECT DATE_FORMAT(event_date, '%M/%Y') AS month_and_year, name, COUNT(name) as sold, MAX(usd_price) AS max_usd_price
FROM pricedata
GROUP BY  month_and_year,name) AS result
GROUP BY month_and_year;


SELECT DATE_FORMAT(event_date, '%M/%Y') AS month_and_year, name, COUNT(name) as sold, MAX(usd_price)
FROM pricedata
GROUP BY  month_and_year,name;



