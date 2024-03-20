-- Insertar datos en las tablas
delimiter %%
CREATE PROCEDURE InsertarRegistros()
BEGIN
	INSERT INTO Productos (ID, Nombre, Precio, Stock)
	VALUES (1, 'Camiseta', 20.00, 50),
		   (2, 'Pantalón', 40.00, 30),
		   (3, 'Sudadera', 35.00, 20),
		   (4, 'Zapatos', 50.00, 15),
		   (5, 'Bufanda', 15.00, 40),
		   (6, 'Gorra', 10.00, 60),
		   (7, 'Calcetines', 5.00, 100),
		   (8, 'Chaqueta', 60.00, 10),
		   (9, 'Falda', 30.00, 25),
		   (10, 'Traje', 120.00, 5);

	INSERT INTO Ventas (ID, Fecha, ProductoID, Cantidad, PrecioUnitario, Total)
	VALUES (1, '2024-03-01', 1, 2, 20.00, 40.00),
		   (2, '2024-03-02', 2, 1, 40.00, 40.00),
		   (3, '2024-03-03', 3, 3, 35.00, 105.00),
		   (4, '2024-03-04', 4, 1, 50.00, 50.00),
		   (5, '2024-03-05', 5, 2, 15.00, 30.00),
		   (6, '2024-03-06', 6, 1, 10.00, 10.00),
		   (7, '2024-03-07', 7, 4, 5.00, 20.00),
		   (8, '2024-03-08', 8, 2, 60.00, 120.00),
		   (9, '2024-03-09', 9, 1, 30.00, 30.00),
		   (10, '2024-03-10', 10, 1, 120.00, 120.00);
END
%%

CALL InsertarRegistros();