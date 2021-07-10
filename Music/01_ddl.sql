CREATE DATABASE Music;
GO

USE Music;
GO

USE Music;

CREATE TABLE Generos (
	Id INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(250) NOT NULL UNIQUE
);

CREATE TABLE Cantores (
	Id INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(250) NOT NULL UNIQUE
);

CREATE TABLE Bandas (
	Id INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(250) NOT NULL UNIQUE,
	GeneroId INT FOREIGN KEY REFERENCES Generos(Id)
);

CREATE TABLE BandasCantores (
	CantorId INT FOREIGN KEY REFERENCES Cantores(Id)
	, BandaId INT FOREIGN KEY REFERENCES Bandas(Id)
);

CREATE TABLE Albuns (
	Id INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(250) NOT NULL UNIQUE,
	BandaId INT FOREIGN KEY REFERENCES Bandas(Id)
);

CREATE TABLE Musicas (
	Id INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(250) NOT NULL UNIQUE,
	AlbumId INT FOREIGN KEY REFERENCES Albuns(Id)
)
