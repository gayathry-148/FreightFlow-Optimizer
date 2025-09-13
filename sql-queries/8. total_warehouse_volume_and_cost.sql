SELECT
    w.Wh,
    SUM(p.Daily_capacity) AS total_volume,
    SUM(p.Daily_capacity * w.Cost_per_unit) AS total_value
FROM
    `shipping-logistics-gcp.Shipping_supply_chain.WhCosts_table` w
JOIN
    `shipping-logistics-gcp.Shipping_supply_chain.WhCapacities_table` p
ON
    w.Wh = p.Plant_Id
GROUP BY
    w.Wh
ORDER BY
    total_volume DESC;
