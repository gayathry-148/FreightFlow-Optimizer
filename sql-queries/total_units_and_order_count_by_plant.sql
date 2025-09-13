SELECT 
  Plant_Code, 
  COUNT(Plant_Code) AS Plant_Count, 
  SUM(Unit_Quantity) AS Unit_Count 
FROM 
  shipping-logistics-gcp.Shipping_supply_chain.OrderList_table_new 
GROUP BY 
  Plant_Code;
