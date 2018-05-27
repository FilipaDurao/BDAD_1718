.mode columns .headers on .nullvalue NULL
SELECT Pais.Nome AS Pais,
       COUNT(*) as NumberAthelets
FROM Pais
JOIN EdicaoAtletaEvento
JOIN Atleta
WHERE Pais.Sigla = Atleta.SiglaPais
  AND Atleta.ID = EdicaoAtletaEvento.IdAtleta
  AND EdicaoAtletaEvento.Ano =
    (SELECT MAX(Ano)
     FROM EdicaoDosJogos)
GROUP BY Pais.Nome
ORDER BY Pais.Nome;
