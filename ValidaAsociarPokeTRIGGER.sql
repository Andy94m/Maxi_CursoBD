

CREATE TRIGGER ValidarAsociarPokemon
ON Entrenadores.Pokemons
INSTEAD OF Insert
AS
Begin
Declare @CantPokemon INT;
SELECT @CantPokemon = COUNT(Id) FROM Entrenadores.Pokemons
WHERE IdEntrenador = (SELECT IdEntrenador FROM inserted)
IF @CantPokemon >= 3
BEGIN
	PRINT('No puedes tener mas de 3 pokemons.');
	ROLLBACK TRANSACTION;
END
ELSE
BEGIN
	INSERT INTO Entrenadores.Pokemons (IdEntrenador, IdPokemon, Nombre)
        SELECT IdEntrenador, IdPokemon, Nombre
        FROM inserted;
END
END

SET IDENTITY_INSERT Entrenadores.Pokemons ON;
SET IDENTITY_INSERT Entrenadores.Pokemons OFF;
--select * from Entrenadores.Pokemons
