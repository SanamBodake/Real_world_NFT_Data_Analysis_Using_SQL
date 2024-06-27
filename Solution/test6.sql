USE cryptopunk;
SELECT CONCAT('"', name, " was sold for ", "$", ROUND(usd_price, -3), " to ", buyer_address, " from ", seller_address, " on ", event_date,'"') 
	   AS summery
       FROM pricedata;