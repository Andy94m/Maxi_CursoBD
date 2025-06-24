/*
USE [Eventos_DB]
GO

CREATE DATABASE [Eventos_DB]
ON PRIMARY(
	NAME = N'EventosDB',
	FILENAME = N'C:\Users\Andy\Desktop\MaxiPrograma\Curso Base de Datos\DB\Eventos\Eventos_DB.mdf',
	SIZE = 10MB,
	MAXSIZE = 500mb,
	FILEGROWTH = 100mb
)

LOG ON (
	NAME = N'EventosDB_log',
	FILENAME = N'C:\Users\Andy\Desktop\MaxiPrograma\Curso Base de Datos\DB\Eventos\Eventos_DB_log',
	SIZE = 5MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 10MB
)

GO
*/

CREATE TABLE Eventos(
	Id INT NOT NULL IDENTITY(1,1),
	NombreEvento VARCHAR(100),
	FechaInicio DATE,
	FechaFin DATE,
	Lugar VARCHAR (100),

	CONSTRAINT PK_Evento PRIMARY KEY (Id)
);

CREATE TABLE Asistentes(
	Id INT NOT NULL IDENTITY(1,1),
	Nombre VARCHAR (100),
	Email VARCHAR (100),
	Telefono VARCHAR (100),

	CONSTRAINT PK_Asistentes PRIMARY KEY (Id)
);

CREATE TABLE EventosAsistentes(
	IdEvento INT NOT NULL,
	IdAsistente INT NOT NULL,

	CONSTRAINT FK_Evento FOREIGN KEY (IdEvento) REFERENCES Eventos(Id),
	CONSTRAINT FK_Asistente FOREIGN KEY (IdAsistente) REFERENCES Asistentes(Id)
);



