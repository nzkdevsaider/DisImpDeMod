CREATE FUNCTION dbo.ObtenerPaisConMasOrdenes
(
    @Country NVARCHAR(50)
)
RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @TotalOrders INT
    
    SELECT @TotalOrders = COUNT(*)
    FROM Orders
    WHERE ShipCountry = @Country
    
    RETURN @TotalOrders
END
GO