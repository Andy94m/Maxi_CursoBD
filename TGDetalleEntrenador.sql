/*
CREATE TRIGGER ActualizarDetalleEntrenador
ON Entrenadores.Pokemons
AFTER INSERT
AS
BEGIN
	UPDATE EntrenadoresDetalle
	SET IdUltimoPokemonCapturado = (SELECT IdPokemon FROM inserted),
	FechaUltimaCaptura = GETDATE()
	WHERE Id = (SELECT IdEntrenador FROM inserted)
END


EXEC AsociarPokemon 13, 4, 'Pepito'
*/

SELECt * FROM EntrenadoresDetalle
SELECT * FROM Pokemons


