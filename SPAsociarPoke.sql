CREATE PROCEDURE AsociarPokemon2
@IdEntrenador INT,
@IdPokemon INT,
@Nombre VARCHAR(59)
AS
DECLARE @IdNuevo INT;
SELECT @IdNuevo = max(Id)+1 FROM Entrenadores.Pokemons

IF EXISTS (SELECT Id FROM Entrenadores WHERE Id = @IdEntrenador)
BEGIN
	INSERT INTO Entrenadores.Pokemons
	VALUES (@IdNuevo, @IdEntrenador, @IdPokemon, @Nombre)
	PRINT('Pokemon asociado correctamente.')
END
ELSE
BEGIN 
	PRINT('El entrenador no existe.')
END;