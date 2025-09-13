SELECT 
  Product_Id,
  SUM(Unit_Quantity)AS Volume,
  COUNT(Plant_Code) AS No_Of_Warehouses
FROM 
  `shipping-logistics-gcp.Shipping_supply_chain.OrderList_table_new`
GROUP BY 
  Product_Id
ORDER BY 
  Volume DESC;
