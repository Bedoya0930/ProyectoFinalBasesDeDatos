DELIMITER //
CREATE FUNCTION ConcatenarNombreProductoYFechaVenta(venta_id INT) RETURNS VARCHAR(200)
READS SQL DATA
BEGIN
    DECLARE nombre_producto VARCHAR(100);
    DECLARE fecha_venta DATE;
    DECLARE resultado VARCHAR(200);

    SELECT p.Nombre INTO nombre_producto
    FROM Productos p
    JOIN Ventas v ON p.ID = v.ProductoID
    WHERE v.ID = venta_id;

    SELECT v.Fecha INTO fecha_venta
    FROM Ventas v
    WHERE v.ID = venta_id;

    SET resultado = UPPER(CONCAT(nombre_producto, ' - ', fecha_venta));

    RETURN resultado;
END //
DELIMITER ;
