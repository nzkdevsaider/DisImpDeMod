CREATE FUNCTION dbo.ObtenerTotalOrdenesPorIdEmpleado
(
    @EmployeeID INT
)
RETURNS INT
AS
BEGIN
    DECLARE @TotalOrders INT
    
    SELECT @TotalOrders = COUNT(*)
    FROM Orders
    WHERE EmployeeID = @EmployeeID
    
    RETURN @TotalOrders
END
GO