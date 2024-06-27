USE cryptopunk;
SELECT ROUND(eth_price, -2) AS bucket,
       COUNT(*) AS count,
       RPAD('', COUNT(*), '*') AS bar
FROM pricedata
GROUP BY bucket
ORDER BY bucket;