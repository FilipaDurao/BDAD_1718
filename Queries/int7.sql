.mode columns
.headers on
.nullvalue NULL

SELECT Atl1.Nome as AtheleOne,
       Atl2.Nome as AtheleTwo,
       N as NumberOfEditions
FROM
  (SELECT Id1,
          Id2,
          COUNT(*) AS N
   FROM
     (SELECT DISTINCT A.IdAtleta AS Id1,
                      B.IdAtleta AS Id2,
                      A.Ano
      FROM EdicaoAtletaEvento A
      JOIN EdicaoAtletaEvento B
      WHERE A.IdAtleta < B.IdAtleta
        AND A.Ano = B.Ano)
   GROUP BY Id1,
            Id2)
JOIN Atleta Atl1
JOIN Atleta Atl2
WHERE Atl1.ID = Id1
  AND Atl2.ID = Id2
  AND N >= 2
ORDER BY NumberOfEditions desc, AtheleOne, AtheleTwo;
