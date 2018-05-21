.mode columns
.headers on
.nullvalue NULL
INSERT INTO Evento(Id, Data, IdTipoDeEvento, IdModalidade) VALUES (18, "15/8/2016" , 1, 0);
SELECT * FROM Recorde WHERE IdModalidade = 0;
INSERT INTO EdicaoAtletaEvento(Posicao, Valor, Ano, IdAtleta, IdEvento) VALUES (2, 9.60, 2016, 1,18);
SELECT * FROM Recorde WHERE IdModalidade = 0;
INSERT INTO EdicaoAtletaEvento(Posicao, Valor, Ano, IdAtleta, IdEvento) VALUES (1, 9.3, 2016, 2,18);
SELECT * FROM Recorde WHERE IdModalidade = 0;
