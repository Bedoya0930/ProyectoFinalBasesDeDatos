CREATE VIEW VistaCodigoVentaNombreProducto AS
SELECT v.ID AS CodigoVenta, CONCAT(p.Nombre, ' - ', v.Fecha) AS NombreProductoFechaVenta
FROM Productos p
JOIN Ventas v ON p.ID = v.ProductoID;


SELECT * FROM VistaCodigoVentaNombreProducto;