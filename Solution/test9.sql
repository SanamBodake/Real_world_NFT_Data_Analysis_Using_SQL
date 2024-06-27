USE cryptopunk;
(SELECT name, MAX(usd_price) AS price,
        CASE 
		WHEN MAX(usd_price) THEN "highest" 
        END AS status
FROM pricedata
GROUP BY name)
UNION
(SELECT name, MIN(usd_price) AS price,
        CASE 
        WHEN MIN(usd_price) THEN "lowest" 
        END AS status
FROM pricedata
GROUP BY name)
ORDER BY name, status;