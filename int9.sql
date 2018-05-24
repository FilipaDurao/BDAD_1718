.mode columns
.headers on
.nullvalue NULL

SELECT Ano,
       COUNT(*) as NumberRecords
FROM
  (SELECT strftime('%Y',DATA) AS Ano
   FROM Recorde)
WHERE Ano IN
    (SELECT EdicaoDosJogos.Ano
     FROM EdicaoDosJogos)
GROUP BY Ano
ORDER BY NumberRecords DESC
