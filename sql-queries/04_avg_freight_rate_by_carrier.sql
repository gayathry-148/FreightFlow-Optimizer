SELECT
  DISTINCT f.Carrier,
  ROUND(AVG(f.Rate), 3) AS RATE,
  SUM(o.Unit_Quantity) AS Total_Quantity
FROM
  shipping-logistics-gcp.Shipping_supply_chain.FreighRates_table f
JOIN
  shipping-logistics-gcp.Shipping_supply_chain.OrderList_table_new o
ON
  f.Carrier = o.Carrier
GROUP BY
  f.Carrier;
