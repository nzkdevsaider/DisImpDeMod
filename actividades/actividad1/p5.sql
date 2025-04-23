INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
 VALUES ('VINET', 5, '1996-07-04', '1996-07-16', 3, 32.38, 'Vins et alcools Chevalier', '59 rue de lAbbaye', 'Reims', NULL, '51100', 'France');

 SELECT EmployeeID, N_Productos FROM Employees WHERE EmployeeID = 5;