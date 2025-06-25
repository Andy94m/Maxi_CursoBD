/*
CREATE TABLE Entrenadores(
	Id INT NOT NULL IDENTITY(1,1),
	Nombre VARCHAR(50),
	Apellido VARCHAR(50),
	NickName VARCHAR(50),
	Email VARCHAR(50),
	Clave VARCHAR(50),
	FechaNacimiento DATE,

	CONSTRAINT PK_Entrenadores PRIMARY KEY(Id)
);

CREATE TABLE Ciudades(
	Id INT NOT NULL IDENTITY(1,1),
	Nombre VARCHAR(50),

	CONSTRAINT PK_Ciudades PRIMARY KEY(Id)
);

CREATE TABLE Pokemons(
	Id INT NOT NULL IDENTITY(1,1),
	Nombre VARCHAR(50),
	Numero INT,
	Bio VARCHAR(500),
	Altura DECIMAL,
	Peso DECIMAL,
	ImagenUrl VARCHAR(500),
	IdEvolucion INT,

	CONSTRAINT PK_Pokemons PRIMARY KEY (Id),
	CONSTRAINT FK_Evolucion FOREIGN KEY (IdEvolucion) REFERENCES Pokemons(Id)
);

CREATE SCHEMA Evoluciones;
CREATE TABLE Evoluciones.Variables(
	Id INT NOT NULL IDENTITY(1,1),
	IdEvolucion INT,
	IdPokemon INT,

	CONSTRAINT PK_EvoVariables PRIMARY KEY(Id),
	CONSTRAINT FK_IdEvo FOREIGN KEY (IdEvolucion) REFERENCES Pokemons(Id),
	CONSTRAINT FK_IdPoke FOREIGN KEY (IdPokemon) REFERENCES Pokemons(Id)
);


CREATE SCHEMA Entrenadores
CREATE TABLE Entrenadores.Pokemons(
	Id INT NOT NULL IDENTITY(1,1),
	IdEntrenador INT,
	IdPokemon INT,
	Nombre VARCHAR(50)

	CONSTRAINT PK_IdEntrenador_Poke PRIMARY KEY (Id),
	CONSTRAINT FK_Entrenador FOREIGN KEY (IdEntrenador) REFERENCES Entrenadores(Id),
	CONSTRAINT FK_Pokemon FOREIGN KEY (IdPokemon) REFERENCES Pokemons (Id)
);


--CREATE SCHEMA Pokemons
CREATE TABLE Pokemons.Habilidades(
	IdPokemons INT,
	IdHabilidad INT,

	CONSTRAINT PK_PokeHabilidades PRIMARY KEY(IdPokemons, IdHabilidad)
);


ALTER TABLE Pokemons.Habilidades
ADD CONSTRAINT FK_Hab_Pokemon FOREIGN KEY (IdPokemons) REFERENCES Pokemons(Id)

ALTER TABLE Pokemons.Habilidades
ADD CONSTRAINT FK_Hab_Habilidad FOREIGN KEY (IdHabilidad) REFERENCES Habilidades(Id)


ALTER TABLE Habilidades
ADD CONSTRAINT FK_IdTipo FOREIGN KEY (IdTipo) REFERENCES Elementos(Id)


CREATE TABLE Pokemons.Tipos(
	IdPokemon INT,
	IdElemento INT,

	CONSTRAINT PK_PokeTipos PRIMARY KEY (IdPokemon, IdElemento),
	CONSTRAINT FK_PokeTipos FOREIGN KEY (IdPokemon) REFERENCES Pokemons(Id),
	CONSTRAINT FK_PokeElementosFOREIGN FOREIGN KEY (IdElemento) REFERENCES Elementos(Id)
);



CREATE TABLE Pokemons.Debilidades(
	IdPokemon INT,
	IdElemento INT,

	CONSTRAINT PK_PokeDebilidades PRIMARY KEY (IdPokemon, IdElemento),
	CONSTRAINT FK_PokeDebilidades FOREIGN KEY (IdPokemon) REFERENCES Pokemons(Id),
	CONSTRAINT FK_PokeElementosDebili FOREIGN KEY (IdElemento) REFERENCES Elementos(Id)
);


CREATE TABLE Medallas(
	Id INT NOT NULL IDENTITY(1,1),
	Nombre VARCHAR(50),
	ImagenUrl VARCHAR(500),

	CONSTRAINT PK_Medallas PRIMARY KEY(Id)
);

CREATE TABLE Gimnacios(
	Id INT NOT NULL IDENTITY(1,1),
	Nombre VARCHAR (50),
	IdCiudad INT,
	IdMedalla INT,
	IdEntrenador INT,

	CONSTRAINT PK_IdGimnacios PRIMARY KEY(Id),
	CONSTRAINT FK_CiudadGim FOREIGN KEY(IdCiudad) REFERENCES Ciudades(Id),
	CONSTRAINT FK_MedallaGim FOREIGN KEY(IdMedalla) REFERENCES Medallas(Id),
	CONSTRAINT FK_EntrenadorGim FOREIGN KEY (IdEntrenador) REFERENCES Entrenadores(Id)
);

ALTER TABLE ELEMENTOS
ADD Descripcion VARCHAR(500)


CREATE TABLE Entrenadores.Medallas(
	Id INT NOT NULL IDENTITY(1,1),
	IdEntrenador INT,
	IdMedalla INT,
	FechaObtencion DATE,

	CONSTRAINT PK_IdMedallaEntrenador PRIMARY KEY (Id),
	CONSTRAINT FK_IdEntrenadorMedalla FOREIGN KEY (IdEntrenador) REFERENCES Entrenadores(Id),
	CONSTRAINT FK_IdMedallaEntrenador FOREIGN KEY (IdMedalla) REFERENCES Medallas(Id)
);
*/