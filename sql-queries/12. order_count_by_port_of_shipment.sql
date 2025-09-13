SELECT
    p.Port,
    COUNT(o.Order_Id) AS Total_Orders
FROM
    `shipping-logistics-gcp.Shipping_supply_chain.PlantPort_table` p
JOIN
    `shipping-logistics-gcp.Shipping_supply_chain.OrderList_table_new` o
ON
    p.Plant_Code = o.Plant_Code
GROUP BY
    p.Port;
