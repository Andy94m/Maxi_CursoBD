CREATE PROCEDURE spAsociarHabilidad
@IdPokemon INT,
@IdHabilidad INT
AS
BEGIN TRY
	BEGIN TRANSACTION
		INSERT INTO Pokemons.Habilidades
		VALUES (@IdPokemon, @IdHabilidad)
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
	ROLLBACK TRANSACTION
	RAISERROR('Fallo al intentar asociar habilidad', 16, 1)
END CATCH

CREATE TRIGGER ValidarAsociarHabilidad
ON Pokemons.Habilidades
AFTER INSERT
AS
--INSERTED
IF EXISTS (SELECT Nombre, FROM Habilidades WHERE Id = 
	(SELECT IdHabilidad FROM inserted) AND IdTipo IN
	(SELECT IdElemento FROM Pokemons.Tipos WHERE IdPokemon = 
		(SELECT IdPokemon FROM inserted)))
BEGIN
	PRINT('Habilidad correcta.');
END
ELSE
BEGIN
	RAISERROR('Tipo habilidad INVALIDO', 16, 1);
END
