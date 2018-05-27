.mode columns
.headers on
.nullvalue NULL

SELECT Desporto.Nome as Desporto, Modalidade.Nome as Modalidade,Atleta.Nome as Atleta
FROM Evento, Atleta, EdicaoAtletaEvento, Modalidade, Desporto
WHERE   EdicaoAtletaEvento.Ano = (SELECT MAX(Ano) FROM EdicaoDosJogos)
    AND Atleta.ID = EdicaoAtletaEvento.IdAtleta
    AND EdicaoAtletaEvento.IdEvento = Evento.ID
    AND Modalidade.ID = Evento.IdModalidade
    AND Desporto.ID = Modalidade.IdDesporto
ORDER BY Desporto.Nome, Modalidade.Nome, Atleta.Nome;
