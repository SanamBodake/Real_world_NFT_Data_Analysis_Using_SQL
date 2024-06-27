USE cryptopunk;
CREATE TEMPORARY TABLE wallet1
SELECT name, event_date, buyer_address, seller_address, usd_price,
CASE WHEN buyer_address = "0x1919db36ca2fa2e15f9000fd9cdc2edcf863e685" THEN -1
     WHEN seller_address = "0x1919db36ca2fa2e15f9000fd9cdc2edcf863e685" THEN 1
     END AS profit FROM pricedata;

SELECT *, SUM(usd_price) OVER(PARTITION BY profit ORDER BY profit) AS sum_usd_price FROM wallet1
WHERE profit = -1 OR profit = 1;




