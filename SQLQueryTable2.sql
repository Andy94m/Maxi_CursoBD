/*
USE MundoPokemon_DB
GO

create table Elementos(
	Id int PRIMARY KEY,
	Descripcion varchar(50)
);

create table Habilidades(
	Id int not null,
	Nombre varchar(50),
	Descripcion varchar(250),
	IdTipo int,
	CONSTRAINT PK_Habilidad PRIMARY KEY(Id)
);

create table [Pokemons.Habilidades](
	Id int not null,
	IdPokemon int,
	IdHabilidad int,
	CONSTRAINT PK_Pokemon_Habilidad PRIMARY KEY (Id),
	CONSTRAINT FK_PokeHabilidad_Habilidades  FOREIGN KEY (IdHabilidad) REFERENCES Habilidades (Id)
	CONSTRAINT FK_PokeHabilidad_Pokemons FOREIGN KEY (IdPokemon) FOREIGN KEY (IdPokemon) REFERENCES Pokemons (Id)
);


ALTER TABLE Pokemons
ALTER COLUMN Id int not null;

ALTER TABLE Pokemons
ADD Nombre varchar(50),
	Numero int,
	Bio varchar(250),
	Altura float;
	ADD CONSTRAINT PK_Pokemon PRIMARY KEY (Id)

ALTER TABLE Pokemons
ADD CONSTRAINT PK_Pokemon PRIMARY KEY (Id)

ALTER TABLE [Pokemons.Habilidades]
ADD CONSTRAINT FK_PokeHabilidad_Pokemons FOREIGN KEY (IdPokemon) REFERENCES Pokemons (Id)


DROP MundoPokemon_DB
DROP TABLE Elementos
*/
alter table Elementos
DROP COLUMN Descripcion
