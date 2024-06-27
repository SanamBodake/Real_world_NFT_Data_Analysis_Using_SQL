USE cryptopunk;
SELECT DATE_FORMAT(event_date, '%M/%Y') AS month_and_year, ROUND(SUM(usd_price),-2) AS total_price
FROM pricedata
GROUP BY  month_and_year;
