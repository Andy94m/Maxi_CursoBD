CREATE FUNCTION Saludo(@Nombre varchar(50))
RETURNS varchar(50)
AS
BEGIN
	DECLARE @saludo varchar(50);
	SET @saludo = CONCAT('HOLA ', @Nombre);
	RETURN @saludo;
END
--SELECT Id, dbo.Saludo(Nombre) AS Saludo FROM Pokemons

CREATE FUNCTION Dias(@Fecha DATE)
RETURNS INT
AS
BEGIN
	DECLARE @dias int;
	SET @dias = DATEDIFF(DAY, @Fecha, GETDATE())
	return @dias;
END
SELECT ED.Id, E.Nombre, dbo.Dias(FechaUltimaCaptura) as 'Dias sin captura'
FROM EntrenadoresDetalle ED INNER JOIN Entrenadores E
ON ED.Id = E.Id
WHERE FechaUltimaCaptura IS NOT NULL

