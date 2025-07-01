/*

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



CREATE PROCEDURE AsociarPokemon
@IdEntrenador INT,
@IdPokemon INT,
@Nombre VARCHAR(50)
AS
BEGIN
    DECLARE @IdNuevo INT;
    DECLARE @CantidadPokemons INT;

    SELECT @IdNuevo = ISNULL(MAX(Id), 0) + 1 FROM Entrenadores.Pokemons;
    SELECT @CantidadPokemons = COUNT(*) FROM Entrenadores.Pokemons WHERE IdEntrenador = @IdEntrenador;

    IF @CantidadPokemons < 6
    BEGIN
        IF EXISTS (SELECT Id FROM Entrenadores WHERE Id = @IdEntrenador)
        BEGIN
            SET IDENTITY_INSERT Entrenadores.Pokemons ON;

            INSERT INTO Entrenadores.Pokemons (Id, IdEntrenador, IdPokemon, Nombre)
            VALUES (@IdNuevo, @IdEntrenador, @IdPokemon, @Nombre);

            SET IDENTITY_INSERT Entrenadores.Pokemons OFF;

            PRINT('Pokemon asociado correctamente.');
        END
        ELSE
        BEGIN
            PRINT('El entrenador no existe.');
        END
    END
    ELSE
    BEGIN
        PRINT('No se pudo procesar. El entrenador tiene más de 5 Pokemons asignados');
    END
END

EXEC AsociarPokemon 3, 4, 'Fueguito' */
SELECT * FROM Entrenadores.Pokemons