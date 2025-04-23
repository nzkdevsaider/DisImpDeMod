CREATE TRIGGER trg_ActualizarEmpleadoProductos
ON [Order Details]
AFTER INSERT
AS
BEGIN
    UPDATE Employees
    SET N_Productos = ISNULL(N_Productos, 0) + (
        SELECT SUM(i.Quantity)
        FROM inserted i
        INNER JOIN Orders o ON i.OrderID = o.OrderID
        WHERE o.EmployeeID = Employees.EmployeeID
    )
    WHERE EmployeeID IN (
        SELECT o.EmployeeID
        FROM inserted i
        INNER JOIN Orders o ON i.OrderID = o.OrderID
    );
END;
GO