SELECT
    DISTINCT Origin_Port,
    SUM(Ship_Ahead_DayCount) AS Avg_Ship_Ahead,
    SUM(Ship_Late_DayCount) AS Avg_Ship_Late
FROM
    `shipping-logistics-gcp.Shipping_supply_chain.OrderList_table_new`
GROUP BY
    Origin_Port;
