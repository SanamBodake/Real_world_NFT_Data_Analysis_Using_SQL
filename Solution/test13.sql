USE cryptopunk;
CREATE TEMPORARY TABLE daily_avg_table
SELECT event_date, usd_price, AVG(usd_price) OVER (PARTITION BY event_date ORDER BY event_date) AS daily_avg
FROM pricedata;


SELECT * FROM daily_avg_table
WHERE usd_price > 0.1*daily_avg;

SELECT event_date, usd_price,  AVG(usd_price) OVER (PARTITION BY event_date ORDER BY event_date) AS daily_avg_new FROM daily_avg_table
WHERE usd_price > 0.1*daily_avg;

SELECT *,  AVG(usd_price) OVER (PARTITION BY event_date ORDER BY event_date) AS daily_avg_new FROM
(SELECT * FROM daily_avg_table
WHERE usd_price > 0.1*daily_avg) AS estimated_avg_value_calculator;








