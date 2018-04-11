--Em falta:
-- paises
-- Nacionalidade
-- Recorde

INSERT INTO TipoDeRecord(ID, Nome) VALUES (0, "Ascending")
INSERT INTO TipoDeRecord(ID, Nome) VALUES (1, "Descending")

INSERT INTO TipoDeJogos(ID, Tipo) VALUES (0, "Inverno")
INSERT INTO TipoDeJogos(ID, Tipo) VALUES (1, "Verao")

INSERT INTO TipoDeEvento(ID, Nome) VALUES (0, "Semi-final")
INSERT INTO TipoDeEvento(ID, Nome) VALUES (1, "Final")


-- Mudar paises
INSERT INTO EdicaoDosJogos(Ano, Cidade, IdTipoDeJogos, IdPais) VALUES (2016, "Rio de Janeiro", 1, 0)
INSERT INTO EdicaoDosJogos(Ano, Cidade, IdTipoDeJogos, IdPais) VALUES (2018, "Pyeongchang", 0, 0)

INSERT INTO Desporto(ID, Nome) Values (0, "Atheletics")
INSERT INTO Desporto(ID, Nome) Values (1, "Aquatics")

INSERT INTO Modalidade(ID, Nome, IdDesporto, Sexo) VALUES (0, "100-meters", 0, 'M')
INSERT INTO Modalidade(ID, Nome, IdDesporto, Sexo) VALUES (1, "200-meters", 0, 'M')
INSERT INTO Modalidade(ID, Nome, IdDesporto, Sexo) VALUES (4, "100-meters Freestyle", 1, 'M')
INSERT INTO Modalidade(ID, Nome, IdDesporto, Sexo) VALUES (2, "100-meters", 0, 'F')
INSERT INTO Modalidade(ID, Nome, IdDesporto, Sexo) VALUES (3, "200-meters", 0, 'F')
INSERT INTO Modalidade(ID, Nome, IdDesporto, Sexo) VALUES (5, "100-meters Freestyle", 1, 'F')

INSERT INTO Evento(Id, Data, IdTipoDeEvento, IdModalidade) VALUES (0, "Final", 1, 0)
INSERT INTO Evento(Id, Data, IdTipoDeEvento, IdModalidade) VALUES (1, "Final", 1, 1)
INSERT INTO Evento(Id, Data, IdTipoDeEvento, IdModalidade) VALUES (2, "Final", 1, 2)
INSERT INTO Evento(Id, Data, IdTipoDeEvento, IdModalidade) VALUES (3, "Final", 1, 3)
INSERT INTO Evento(Id, Data, IdTipoDeEvento, IdModalidade) VALUES (4, "Final", 1, 4)
INSERT INTO Evento(Id, Data, IdTipoDeEvento, IdModalidade) VALUES (5, "Final", 1, 5)

INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (1,'Usain Bolt',8/21/86,	'M',	95,	1.96)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (2,'Justin Gatlin',2/10/82,	'M',	80,	1.86)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (3,'Andre De Grasse',11/10/94,	'M',	70,	1.76)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (4,'Yohan Blake',12/26/89,	'M',	80,	1.8)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (5,'Akani Simbine',9/21/93,	'M',	74,	1.76)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (6,'Ben Youssef Meite',11/11/86,	'M',	75,	1.8)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (7,'Jimmy Vicaut',2/27/92,	'M',	83,	1.88)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (8,'Trayvon Bromell',7/10/95,	'M',	70,	1.73)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (9,'Christophe Lemaitre',6/11/90,	'M',	74,	1.9)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (10,'Adam Gemili',10/6/93,	'M',	75,	1.78)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (11,'Churandy Martina',7/3/84,	'M',	76,	1.8)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (12,'Lashawn Merritt',6/27/86,	'M',	86,	1.91 )
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (13,'Alonso Edward',12/8/89,	'M',	76,	1.81)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (14,'Ramil Guliyev',5/29/90,	'M',	80,	1.86)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (15,'Elaine Thompson',6/28/92,	'F',	57,	1.67)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (16,'Tori Bowie',8/27/90,	'F',	58,	1.76)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (17,'Shelly-Ann Fraser-Pryce',12/27/86,	'F',	57,	1.52)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (18,'Christania Williams'10/17/94,	'F',	63,	1.65)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (19,'Dafne Schippers',6/15/92,	'F',	70,	1.79)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (20,'Michelle-Lee Ahye',4/10/92, 'F',	64,	1.6)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (21,'English Gardner',4/22/92,	'F',	54,	1.68)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (22,'Marie-Josee Ta Lou',11/18/88,	'F',	50,	1.59)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (23,'Dina Asher-Smith',12/4/95,	'F',	55,	1.64)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (24,'Deajah Stevens',5/19/95,	'F', NULL, NULL)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (25,'Ivet Lalova-Collio', 5/18/84,	'F',	56,	1.68)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (26,'Kyle Chalmers',6/25/98,	'M',	90,	1.93)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (27,'Pieter Timmers',1/21/88,	'M',	89,	2)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (28,'Nathan Adrian',12/7/88,	'M',	102,	1.99)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (29,'Santo Condorelli',1/17/95,	'M',	88,	1.88)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (30,'Duncan Scott',5/6/97,	'M',	74,	1.91)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (31,'Caeleb Dressel',8/16/96,	'M',	86,	1.91)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (32,'Cameron Mcevoy',5/13/94,	'M',	75,	1.85)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (33,'Marcelo Chierighini',1/15/91,	'M',	86,	1.9)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (34,'Simone Manuel',8/2/96,	'F',	72,	1.78)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (35,'Penny Oleksiak',6/13/00,	'F',	68,	1.86)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (36,'Sarah Sjostrom',8/17/93,	'F',	76,	1.82)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (37,'Bronte Campbell',5/14/94,	'F',	58,	1.79)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (38,'Ranomi Kromowidjojo',8/20/90,	'F',	72,	1.8)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (39,'Cate Campbell',5/20/92,	'F',	74,	1.86)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (40,'Abbey Weitzeil',12/3/96,	'F',	68,	1.78)
INSERT INTO Atleta(ID, Nome, DataDeNascimento, Sexo, Peso, Altura) VALUES (41,'Jeanette Ottesen',12/30/87,	'F',	72,	1.8)

INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (1, 9.81, 2016, 1,0)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (2, 9.89, 2016, 2,0)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (3, 9.91, 2016, 3,0)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (4, 9.93, 2016, 4,0)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (5, 9.94, 2016, 5,0)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (6, 9.96, 2016, 6,0)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (7, 10.04, 2016, 7,0)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (8, 10.06, 2016, 8,0)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (1, 19.78, 2016, 1,1)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (2, 20.02, 2016, 3,1)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (3, 20.12, 2016, 9,1)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (4, 20.12, 2016, 10,1)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (5, 20.13, 2016, 11,1)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (6, 20.19, 2016, 12,1)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (7, 20.23, 2016, 13,1)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (8, 20.43, 2016, 14,1)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (1, 10.71, 2016, 15,2)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (2, 10.83, 2016, 16,2)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (3, 10.86, 2016, 17,2)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (4, 10.86, 2016, 18,2)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (5, 10.90, 2016, 19,2)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (6, 10.92, 2016, 20,2)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (7, 10.94, 2016, 21,2)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (8, 11.80, 2016, 22,2)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (1, 21.78, 2016, 15,3)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (2, 21.88, 2016, 19,3)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (3, 22.15, 2016, 16,3)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (4, 22.21, 2016, 22,3)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (5, 22.31, 2016, 23,3)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (6, 22.34, 2016, 20,3)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (7, 22.65, 2016, 24,3)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (8, 22.69, 2016, 25,3)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (1, 47.58, 2016, 26,4)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (2, 47.80, 2016, 27,4)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (3, 47.85, 2016, 28,4)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (4, 47.88, 2016, 29,4)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (5, 48.01, 2016, 30,4)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (6, 48.02, 2016, 31,4)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (7, 48.12, 2016, 32,4)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (8, 48.41, 2016, 33,4)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (1, 52.70, 2016, 34,5)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (1, 52.70, 2016, 35,5)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (3, 52.99, 2016, 36,5)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (4, 53.04, 2016, 37,5)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (5, 53.08, 2016, 38,5)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (6, 53.24, 2016, 39,5)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (7, 53.30, 2016, 40,5)
INSERT INTO Ranking(Position, Valor, Ano. IdAtleta, IdEvento) VALUES (8, 53.36, 2016, 41,5)