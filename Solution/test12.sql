USE cryptopunk;
SELECT COUNT(*) AS total_transactions FROM pricedata
WHERE buyer_address = "0x1919db36ca2fa2e15f9000fd9cdc2edcf863e685" OR seller_address = "0x1919db36ca2fa2e15f9000fd9cdc2edcf863e685";