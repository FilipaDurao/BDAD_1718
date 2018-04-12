--
-- File generated with SQLiteStudio v3.1.1 on quinta abr 12 09:37:17 2018
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

-- Table: Atleta
DROP TABLE IF EXISTS Atleta;

CREATE TABLE Atleta (
    ID               INT    PRIMARY KEY,
    Nome             STRING NOT NULL ON CONFLICT ABORT,
    DataDeNascimento STRING NOT NULL ON CONFLICT ABORT,
    Sexo             CHAR   CHECK (Sexo = 'F' OR Sexo = 'M'),
    Peso             DOUBLE,
    Altura           DOUBLE,
    SiglaPais        STRING REFERENCES Pais (Sigla) ON DELETE SET NULL
                                                    ON UPDATE CASCADE
);


-- Table: Desporto
DROP TABLE IF EXISTS Desporto;

CREATE TABLE Desporto (
    ID   INT    PRIMARY KEY,
    Nome STRING UNIQUE
                NOT NULL ON CONFLICT ABORT
);


-- Table: EdicaoAtletaEvento
DROP TABLE IF EXISTS EdicaoAtletaEvento;

CREATE TABLE EdicaoAtletaEvento (
    Ano      INT    REFERENCES EdicaoDosJogos ON DELETE SET NULL
                                              ON UPDATE CASCADE,
    IdAtleta INT    REFERENCES Atleta (ID) ON DELETE SET NULL
                                           ON UPDATE CASCADE,
    IdEvento INT    REFERENCES Evento (ID) ON DELETE SET NULL
                                           ON UPDATE CASCADE,
    Posicao  INT,
    Valor    DOUBLE,
    PRIMARY KEY (
        Ano,
        IdAtleta,
        IdEvento
    )
);


-- Table: EdicaoDosJogos
DROP TABLE IF EXISTS EdicaoDosJogos;

CREATE TABLE EdicaoDosJogos (
    Ano           INT    PRIMARY KEY,
    Cidade        STRING NOT NULL ON CONFLICT ABORT,
    IdTipoDeJogos INT    REFERENCES TipoDeJogos (ID) ON DELETE SET NULL
                                                     ON UPDATE CASCADE
                         NOT NULL ON CONFLICT ABORT,
    SiglaPais     STRING REFERENCES Pais (Sigla) ON DELETE SET NULL
                                                 ON UPDATE CASCADE
                         NOT NULL ON CONFLICT ABORT
);


-- Table: Evento
DROP TABLE IF EXISTS Evento;

CREATE TABLE Evento (
    ID             INT    PRIMARY KEY,
    Data           STRING NOT NULL ON CONFLICT ABORT,
    IdTipoDeEvento INT    REFERENCES TipoDeEvento (ID) ON DELETE SET NULL
                                                       ON UPDATE CASCADE
                          NOT NULL ON CONFLICT ABORT,
    IdModalidade   INT    REFERENCES Modalidade (ID) ON DELETE SET NULL
                                                     ON UPDATE CASCADE
                          NOT NULL ON CONFLICT ABORT
);


-- Table: Modalidade
DROP TABLE IF EXISTS Modalidade;

CREATE TABLE Modalidade (
    ID         INT    PRIMARY KEY,
    Nome       STRING NOT NULL ON CONFLICT ABORT,
    IdDesporto INT    REFERENCES Desporto (ID) ON DELETE SET NULL
                                               ON UPDATE CASCADE
                      NOT NULL ON CONFLICT ABORT,
    Sexo       CHAR   CHECK (Sexo = 'F' OR Sexo = 'M')
);


-- Table: Pais
DROP TABLE IF EXISTS Pais;

CREATE TABLE Pais (
    Sigla STRING PRIMARY KEY,
    Nome  STRING UNIQUE
                 NOT NULL ON CONFLICT ABORT
);


-- Table: Recorde
DROP TABLE IF EXISTS Recorde;

CREATE TABLE Recorde (
    ID              INT    PRIMARY KEY,
    Valor           DOUBLE NOT NULL ON CONFLICT ABORT,
    Data            STRING,
    IdAtleta        INT    REFERENCES Atleta (ID) ON DELETE SET NULL
                                                  ON UPDATE CASCADE
                           NOT NULL ON CONFLICT ABORT,
    IdTipoDeRecorde INT    REFERENCES TipoDeRecord (ID) ON DELETE SET NULL
                                                        ON UPDATE CASCADE
                           NOT NULL ON CONFLICT ABORT,
    IdModalidade    INT    REFERENCES Modalidade (ID) ON DELETE SET NULL
                                                      ON UPDATE CASCADE
                           NOT NULL ON CONFLICT ABORT
);


-- Table: TipoDeEvento
DROP TABLE IF EXISTS TipoDeEvento;

CREATE TABLE TipoDeEvento (
    ID   INT    PRIMARY KEY,
    Nome STRING UNIQUE
                NOT NULL ON CONFLICT ABORT
);


-- Table: TipoDeJogos
DROP TABLE IF EXISTS TipoDeJogos;

CREATE TABLE TipoDeJogos (
    ID   INT PRIMARY KEY ASC ON CONFLICT ABORT,
    Tipo INT UNIQUE
             NOT NULL ON CONFLICT ABORT
);


-- Table: TipoDeRecord
DROP TABLE IF EXISTS TipoDeRecord;

CREATE TABLE TipoDeRecord (
    ID   INT    PRIMARY KEY,
    Nome STRING NOT NULL ON CONFLICT ABORT
);


COMMIT TRANSACTION;
