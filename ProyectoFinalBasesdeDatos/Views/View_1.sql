CREATE VIEW VistaNombreProductoCantidadVendida AS
SELECT p.Nombre AS NombreProducto, SUM(v.Cantidad) AS CantidadTotalVendida
FROM Productos p
JOIN Ventas v ON p.ID = v.ProductoID
GROUP BY p.Nombre;