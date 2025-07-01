/*
CREATE TABLE EntrenadoresDetalle(
	Id INT,
	FechaInicio DATE,
	FechaUltimaCaptura DATE,
	IdUltimoPokemonCapturado INT
);

--INSERTED
--DELETED
CREATE TRIGGER InsertEntrenadorDetalle
ON Entrenadores
AFTER INSERT
AS
BEGIN
	INSERT INTO EntrenadoresDetalle (Id, FechaInicio)
	SELECT Id, GETDATE() FROM inserted
END

--DISABLE TRIGGER InsertEntrenadorDetalle ON Entrenadores
--ENABLE TRIGGER InsertEntrenadorDetalle ON Entrenadores
*/

INSERT INTO Entrenadores VALUES
('Carl', 'Montes', 'CHAR', 'holakease@charleskmon.com', 'Andy12345', '1994-01-01')

SELECT * FROM EntrenadoresDetalle
SELECT * FROM Entrenadores


