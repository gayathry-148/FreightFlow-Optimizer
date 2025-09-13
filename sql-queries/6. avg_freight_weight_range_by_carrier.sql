SELECT
    Carrier,
    ROUND(AVG((Minm_wgh_qty + Max_wgh_qty)/2), 3) AS Average_wgt_qty
FROM
    `shipping-logistics-gcp.Shipping_supply_chain.FreighRates_table`
GROUP BY
    Carrier;
