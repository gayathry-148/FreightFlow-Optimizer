SELECT
    DISTINCT Customer,
    COUNT(Order_Id) AS No_of_Orders
FROM
    `shipping-logistics-gcp.Shipping_supply_chain.OrderList_table_new`
GROUP BY
    Customer
ORDER BY
    No_of_Orders DESC
LIMIT 10;
