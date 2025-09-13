SELECT
    DISTINCT Service_Level,
    COUNT(Product_Id) AS No_Of_Products
FROM
    `shipping-logistics-gcp.Shipping_supply_chain.OrderList_table_new`
GROUP BY
    Service_Level;
