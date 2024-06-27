USE cryptopunk;
-- DAYOFWEEK returns the number of the day of the week as 1 to 7 corresponds to the day Sunday to Saturday
SELECT DAYOFWEEK(event_date) AS week_day, count(*) AS num_of_sales, AVG(eth_price) AS average_eth_price FROM pricedata
GROUP BY DAYOFWEEK(event_date)
ORDER BY num_of_sales;