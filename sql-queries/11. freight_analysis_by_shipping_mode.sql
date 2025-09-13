SELECT
    f.Mode_dsc,
    ROUND(AVG(f.Rate), 2) AS Rate,
    COUNT(DISTINCT(o.Product_Id)) AS No_of_Products,
    ROUND(SUM(o.Weight), 0) AS Total_Weight
FROM
    `shipping-logistics-gcp.Shipping_supply_chain.FreighRates_table` f
JOIN
    `shipping-logistics-gcp.Shipping_supply_chain.OrderList_table_new` o
ON
    f.Carrier = o.Carrier
GROUP BY
    f.Mode_dsc;
