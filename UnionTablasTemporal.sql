
SELECT COUNT(Nombre) Elementos_Encontrados FROM
(SELECT Nombre FROM Entrenadores
UNION ALL
Select Nombre FROM Pokemons) as poke


CREATE TABLE #PersonasTemporal(
	NombreTemporal varchar(30)
);

SELECT NombreTemporal FROM #PersonasTemporal
UNION
SELECT Nombre FROM Entrenadores
UNION
SELECT Nombre FROM Pokemons