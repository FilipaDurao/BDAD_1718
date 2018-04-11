--
-- File generated with SQLiteStudio v3.1.1 on quarta abr 11 10:18:11 2018
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

-- Table: Atleta
DROP TABLE IF EXISTS Atleta;
CREATE TABLE Atleta (
        ID INT PRIMARY KEY, 
        Nome STRING, 
        DataDeNascimento STRING, 
        Sexo CHAR CHECK (Sexo = 'F' || Sexo = 'M'), 
        Peso DOUBLE, 
        Altura DOUBLE, 
        SiglaPais STRING REFERENCES Pais (Sigla) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table: Desporto
DROP TABLE IF EXISTS Desporto;
CREATE TABLE Desporto (
        ID INT PRIMARY KEY, 
        Nome STRING UNIQUE
);

-- Table: EdicaoAtletaEvento
DROP TABLE IF EXISTS EdicaoAtletaEvento;
CREATE TABLE EdicaoAtletaEvento (
        Ano INT REFERENCES EdicaoDosJogos ON DELETE SET NULL ON UPDATE CASCADE, 
        IdAtleta INT REFERENCES Atleta (ID) ON DELETE SET NULL ON UPDATE CASCADE, 
        IdEvento INT REFERENCES Evento (ID) ON DELETE SET NULL ON UPDATE CASCADE, 
        Posicao INT, 
        Valor DOUBLE, 
        PRIMARY KEY (Ano, IdAtleta, IdEvento)
);

-- Table: EdicaoDosJogos
DROP TABLE IF EXISTS EdicaoDosJogos;
CREATE TABLE EdicaoDosJogos (
        Ano INT PRIMARY KEY, 
        Cidade STRING, 
        IdTipoDeJogos INT REFERENCES TipoDeJogos (ID) ON DELETE SET NULL ON UPDATE CASCADE, 
        SiglaPais STRING REFERENCES Pais (Sigla) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Table: Evento
DROP TABLE IF EXISTS Evento;
CREATE TABLE Evento (
        ID INT PRIMARY KEY, 
        Data STRING, 
        IdTipoDeEvento INT REFERENCES TipoDeEvento (ID) ON DELETE SET NULL ON UPDATE CASCADE, 
        IdModalidade INT REFERENCES Modalidade (ID) ON DELETE SET NULL ON UPDATE CASCADE, 
        Sexo CHAR CHECK (Sexo = 'F' || Sexo = 'M')
);

-- Table: Modalidade
DROP TABLE IF EXISTS Modalidade;
CREATE TABLE Modalidade (
        ID INT PRIMARY KEY, 
        Nome STRING UNIQUE, 
        IdDesporto INT REFERENCES Desporto (ID) ON DELETE SET NULL ON UPDATE CASCADE UNIQUE
);

-- Table: Pais
DROP TABLE IF EXISTS Pais;
CREATE TABLE Pais (
        Sigla STRING PRIMARY KEY, 
        Nome STRING UNIQUE
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
        Nome STRING UNIQUE
);

-- Table: TipoDeJogos
DROP TABLE IF EXISTS TipoDeJogos;
CREATE TABLE TipoDeJogos (
        ID INT PRIMARY KEY, 
        Tipo INT UNIQUE
);

-- Table: TipoDeRecord
DROP TABLE IF EXISTS TipoDeRecord;
CREATE TABLE TipoDeRecord (
        ID INT PRIMARY KEY,
        Nome STRING
);

COMMIT TRANSACTION;
