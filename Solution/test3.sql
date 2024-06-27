USE cryptopunk;
SELECT event_date, usd_price, 
       AVG(usd_price) OVER(ORDER BY event_date ROWS BETWEEN 49 PRECEDING AND CURRENT ROW) AS moving_avg FROM pricedata;