Use master
GO

CREATE DATABASE MundoPokemon_DB
ON PRIMARY (
    NAME = 'MundoPokemonDB',
    FILENAME = 'C:\Users\Andy\Desktop\MaxiPrograma\Curso Base de Datos\DB\MundoPokemonDB.mdf',
    SIZE = 10MB,
    MAXSIZE = 500MB,
    FILEGROWTH = 100MB
)
LOG ON (
    NAME = 'MundoPokemonDB_log',
    FILENAME = 'C:\Users\Andy\Desktop\MaxiPrograma\Curso Base de Datos\DB\MundoPokemonDB_log.ldf',
    SIZE = 5MB,
    MAXSIZE = 100MB,
    FILEGROWTH = 10MB
);