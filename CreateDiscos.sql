USE [master]
GO

CREATE DATABASE [Discos_DB]
ON PRIMARY(
	NAME = N'DiscosDB',
	FILENAME = N'C:\Users\Andy\Desktop\MaxiPrograma\Curso Base de Datos\DB\Discos\Discos_DB.mdf',
	SIZE = 10MB,
	MAXSIZE = 500mb,
	FILEGROWTH = 100mb
)

LOG ON (
	NAME = N'DiscosDB_log',
	FILENAME = N'C:\Users\Andy\Desktop\MaxiPrograma\Curso Base de Datos\DB\Discos\Discos_DB_log.ldf',
	SIZE = 5MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 10MB
)

GO

CREATE TABLE TipoEdicion(
	Id int not null IDENTITY(1,1),
	Descripcion varchar(200),
	CONSTRAINT PK_TipoEdicion PRIMARY KEY (Id)
);

GO

CREATE TABLE Estilo(
	Id INT NOT NULL IDENTITY(1,1),
	Descripcion VARCHAR(200),
	CONSTRAINT PK_Estilo PRIMARY KEY (Id)
);

GO

CREATE TABLE Disco(	
	Id INT NOT NULL IDENTITY(1,1),
	Titulo VARCHAR(100),
	FechaLanzamiento DATE,
	CantidadCanciones INT,
	UrlImagenTapa VARCHAR(500),
	IdEstilo INT,
	IdTipoEdicion INT,

	CONSTRAINT PK_Disco PRIMARY KEY (Id),
	CONSTRAINT FK_Estilo FOREIGN KEY (IdEstilo) REFERENCES Estilo(Id),
	CONSTRAINT FK_TipoEdicion FOREIGN KEY (IdTipoEdicion) REFERENCES TipoEdicion(Id)
);

go
