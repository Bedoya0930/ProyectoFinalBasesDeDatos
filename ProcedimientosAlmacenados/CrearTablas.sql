-- Crear las tablas

delimiter $$
CREATE PROCEDURE CrearTablas ()
BEGIN
	CREATE TABLE Productos (
		ID INT PRIMARY KEY,
		Nombre VARCHAR(100),
		Precio DECIMAL(10, 2),
		Stock INT
	);

	CREATE TABLE Ventas (
		ID INT PRIMARY KEY,
		Fecha DATE,
		ProductoID INT,
		Cantidad INT,
		PrecioUnitario DECIMAL(10, 2),
		Total DECIMAL(10, 2),
		FOREIGN KEY (ProductoID) REFERENCES Productos(ID)
	);
END
$$

CALL CrearTablas();