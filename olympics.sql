--
-- File generated with SQLiteStudio v3.1.1 on sábado abr 7 12:13:11 2018
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Atleta
DROP TABLE IF EXISTS Atleta;
CREATE TABLE Atleta (
        ID INT PRIMARY KEY,
        Nome STRING,
        DataDeNascimento STRING,
        Sexo CHAR CHECK (Sexo = 'F' || Sexo = 'M'),
        Peso DOUBLE,
        Altura DOUBLE
);

-- Table: Desporto
DROP TABLE IF EXISTS Desporto;
CREATE TABLE Desporto (
        ID INT PRIMARY KEY,
        Nome STRING
);

-- Table: EdicaoAtletaEvento
-- DROP TABLE IF EXISTS EdicaoAtletaEvento;
-- CREATE TABLE EdicaoAtletaEvento (
--         Ano INT REFERENCES EdiçaoDosJogos (Ano) ON DELETE SET NULL ON UPDATE CASCADE,
--         IdAtleta INT REFERENCES Atleta (ID) ON DELETE SET NULL ON UPDATE CASCADE,
--         IdEvento INT REFERENCES Evento (ID) ON DELETE SET NULL ON UPDATE CASCADE,
--         PRIMARY KEY (Ano, IdAtleta, IdEvento)
-- );

-- Table: EdiçaoDosJogos
DROP TABLE IF EXISTS EdiçaoDosJogos;
CREATE TABLE EdiçaoDosJogos (
        Ano INT PRIMARY KEY,
        Cidade STRING,
        IdTipoDeJogos INT REFERENCES TipoDeJogos (ID) ON DELETE SET NULL ON UPDATE CASCADE,
        IdPais INT REFERENCES Pais (ID) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table: Evento
DROP TABLE IF EXISTS Evento;
CREATE TABLE Evento (
        ID INT PRIMARY KEY,
        Data STRING,
        IdTipoDeEvento INT REFERENCES TipoDeEvento (ID) ON DELETE SET NULL ON UPDATE CASCADE,
        IdModalidade INT REFERENCES Modalidade (ID) ON DELETE SET NULL ON UPDATE CASCADE

);

-- Table: Modalidade
DROP TABLE IF EXISTS Modalidade;
CREATE TABLE Modalidade (
        ID INT PRIMARY KEY,
        Nome STRING,
        IdDesporto INT REFERENCES Desporto (ID) ON DELETE SET NULL ON UPDATE CASCADE,
        Sexo CHAR CHECK (Sexo = 'F' || Sexo = 'M')
);

-- Table: Nacionalidade
DROP TABLE IF EXISTS Nacionalidade;
CREATE TABLE Nacionalidade (
        IdPais INT REFERENCES Pais (ID) ON DELETE SET NULL ON UPDATE CASCADE,
        IdAtleta INT REFERENCES Atleta (ID) ON DELETE SET NULL ON UPDATE CASCADE,
        DataDeInicio STRING,
        PRIMARY KEY (IdPais, IdAtleta)
);

-- Table: Pais
DROP TABLE IF EXISTS Pais;
CREATE TABLE Pais (
        ID INT PRIMARY KEY,
        Nome STRING UNIQUE
);

-- Table: Ranking
DROP TABLE IF EXISTS Ranking;
CREATE TABLE Ranking (
        Position INT,
        Valor DOUBLE,
        Ano INT REFERENCES EdiçaoDosJogos (Ano) ON DELETE SET NULL ON UPDATE CASCADE,
        IdAtleta INT REFERENCES Atleta (ID) ON DELETE SET NULL ON UPDATE CASCADE,
        IdEvento INT REFERENCES Evento (ID) ON DELETE SET NULL ON UPDATE CASCADE,
        PRIMARY KEY (Ano, IdAtleta, IdEvento)
);

-- Table: Recorde
DROP TABLE IF EXISTS Recorde;
CREATE TABLE Recorde (
        ID INT PRIMARY KEY,
        Valor DOUBLE,
        Data STRING,
        IdAtleta INT REFERENCES Atleta (ID) ON DELETE SET NULL ON UPDATE CASCADE,
        IdTipoDeRecorde INT REFERENCES TipoDeRecord (ID) ON DELETE SET NULL ON UPDATE CASCADE,
        IdModalidade INT REFERENCES Modalidade (ID) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table: TipoDeEvento
DROP TABLE IF EXISTS TipoDeEvento;
CREATE TABLE TipoDeEvento (
        ID INT PRIMARY KEY,
        Nome STRING
);

-- Table: TipoDeJogos
DROP TABLE IF EXISTS TipoDeJogos;
CREATE TABLE TipoDeJogos (
        ID INT PRIMARY KEY ASC ON CONFLICT ABORT,
        Tipo INT
);

-- Table: TipoDeRecord
DROP TABLE IF EXISTS TipoDeRecord;
CREATE TABLE TipoDeRecord (
        ID INT PRIMARY KEY,
        Nome STRING
);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
