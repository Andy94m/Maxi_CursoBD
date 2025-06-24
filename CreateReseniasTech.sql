/*USE [ReseniasTech_DB]
GO

CREATE DATABASE ReseniasTech_DB
ON PRIMARY(
	NAME = N'ReseniasTechDB',
	FILENAME = N'C:\Users\Andy\Desktop\MaxiPrograma\Curso Base de Datos\DB\ReseniasTech\ReseniasTech_DB.mdf',
	SIZE = 10MB,
	MAXSIZE = 500mb,
	FILEGROWTH = 100mb
)

LOG ON(
	NAME = N'ReseniasTech',
	FILENAME = N'C:\Users\Andy\Desktop\MaxiPrograma\Curso Base de Datos\DB\ReseniasTech\ReseniasTech_DB_log.ldf',
	SIZE = 5MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 10MB
)

GO
*/

CREATE TABLE Usuarios(
	Id INT NOT NULL IDENTITY(1,1),
	Nombre VARCHAR (50),
	Email VARCHAR (50),
	Pais VARCHAR (50),

	CONSTRAINT PK_Usuarios PRIMARY KEY (Id)
);

GO


CREATE TABLE Articulos(
	Id INT NOT NULL IDENTITY (1,1),
	Nombre VARCHAR(50),
	Descripcion VARCHAR(100),
	Categoria VARCHAR(50),
	Precio DECIMAL(9,2),

	CONSTRAINT PK_Articulos PRIMARY KEY(Id)
);

GO


CREATE TABLE Resenias(
	Id INT NOT NULL IDENTITY(1,1),
	IdArticulo INT,
	IdUsuario INT,
	Puntuacion INT,
	Comentario VARCHAR(200),
	Fecha DATE

	CONSTRAINT PK_Resenias PRIMARY KEY (Id),
	CONSTRAINT FK_IdArticulo FOREIGN KEY (IdArticulo) REFERENCES Articulos(Id),
	CONSTRAINT FK_IdUsuario FOREIGN KEY (IdUsuario) REFERENCES Usuarios(Id)
);

