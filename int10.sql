.mode columns .headers on .nullvalue NULL

SELECT Atleta.nome AS Atleta, Desporto.nome AS Desporto, Modalidade.nome AS Modalidade, Recorde.ID, Valor, data
FROM Recorde, Atleta, Modalidade, Desporto
WHERE Atleta.ID = Recorde.idAtleta
AND Desporto.ID = Modalidade.IdDesporto
AND Modalidade.ID = Recorde.idModalidade
ORDER BY data DESC, Atleta.nome;