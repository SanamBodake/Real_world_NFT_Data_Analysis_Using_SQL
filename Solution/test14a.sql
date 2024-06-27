USE cryptopunk;

CREATE TEMPORARY TABLE wallet
SELECT name, event_date, buyer_address, seller_address, usd_price,
CASE WHEN buyer_address = "0x1919db36ca2fa2e15f9000fd9cdc2edcf863e685" THEN -1
     WHEN seller_address = "0x1919db36ca2fa2e15f9000fd9cdc2edcf863e685" THEN 1
     ELSE 0
     END AS value FROM pricedata;

SELECT * FROM wallet;



SELECT *, SUM(usd_price) OVER(PARTITION BY value ORDER BY value) AS sum_usd_price FROM wallet
WHERE value = -1 OR value = 1;








SELECT SUM(wallet_usd_price) AS profit FROM
(SELECT value, CASE
              WHEN value = -1 THEN -SUM(usd_price)
              WHEN value = 1 THEN SUM(usd_price)
              END AS wallet_usd_price FROM wallet
		GROUP BY value) sub;
        
