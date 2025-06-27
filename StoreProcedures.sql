/*
*/
ALTER PROCEDURE spElementosListar
@Id INT,
@IdHasta INT
AS 
SELECT Id, Descripcion
From Elementos 
WHERE Id >= @Id AND Id <= @IdHasta
ORDER BY Id DESC

CREATE PROCEDURE spElementosInsert
@Id INT,
@Desc VARCHAR(50)
AS
INSERT INTO Elementos VALUES (@Id, @Desc)

EXEC spElementosListar 5, 110

EXEC spElementosInsert 99, 'holahola'