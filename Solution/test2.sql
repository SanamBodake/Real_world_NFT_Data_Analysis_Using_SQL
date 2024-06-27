USE cryptopunk;
SELECT name, eth_price, usd_price, event_date FROM pricedata
ORDER BY usd_price DESC
LIMIT 5; 