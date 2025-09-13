SELECT 
  Plant_Code, 
  SUM(Weight) as Total_Weight 
FROM 
  shipping-logistics-gcp.Shipping_supply_chain.OrderList_table_new 
GROUP BY 
  Plant_Code;
