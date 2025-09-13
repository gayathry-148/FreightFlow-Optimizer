SELECT
    v.Customers,
    COUNT(o.Product_Id) AS No_Of_Order,
    ROUND(AVG(o.Weight), 2) AS Avg_weight
FROM
    `shipping-logistics-gcp.Shipping_supply_chain.VmiCustomers_table` v
LEFT JOIN
    `shipping-logistics-gcp.Shipping_supply_chain.OrderList_table_new` o
ON
    v.Customers = o.Customer
GROUP BY
    v.Customers
ORDER BY
    Avg_weight DESC;
