CREATE VIEW VistaTotalVentasPorProducto AS
SELECT p.Nombre AS NombreProducto, SUM(v.Total) AS TotalVentas
FROM Productos p
JOIN Ventas v ON p.ID = v.ProductoID
GROUP BY p.Nombre
ORDER BY TotalVentas DESC;

SELECT * FROM VistaTotalVentasPorProducto;