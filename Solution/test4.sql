USE cryptopunk;
SELECT name, AVG(usd_price) AS average_price FROM pricedata
GROUP BY name
ORDER BY average_price DESC;