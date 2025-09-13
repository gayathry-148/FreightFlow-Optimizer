SELECT
    o.Plant_Code,
    ROUND(AVG((f.Minm_wgh_qty + f.Max_wgh_qty)/2), 3) AS Average_wgt_qty
FROM
    `shipping-logistics-gcp.Shipping_supply_chain.FreighRates_table` f
JOIN
    `shipping-logistics-gcp.Shipping_supply_chain.OrderList_table_new` o
ON
    f.Carrier = o.Carrier
GROUP BY
    o.Plant_Code;
