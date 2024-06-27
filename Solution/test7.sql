USE cryptopunk;
CREATE VIEW 1919_purchases AS
SELECT * FROM pricedata
WHERE buyer_address = "0x1919db36ca2fa2e15f9000fd9cdc2edcf863e685";

SELECT * FROM 1919_purchases;