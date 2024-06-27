USE cryptopunk;
SELECT COUNT(*) AS total_sales, SUM(eth_price) AS total_eth_price, SUM(usd_price) AS total_usd_price FROM pricedata;
