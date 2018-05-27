.mode columns
.headers on
.nullvalue NULL
SELECT Atleta.Nome,
       P AS NumberParticipations
FROM
  (SELECT DISTINCT IdAtleta,
          COUNT(*) AS P
   FROM
     (SELECT DISTINCT IdAtleta,
                      Ano
      FROM EdicaoAtletaEvento)
   GROUP BY IdAtleta)
JOIN Atleta
WHERE P =
  (SELECT DISTINCT MAX(Participations)
  FROM
    (SELECT DISTINCT COUNT(*) AS Participations
     FROM
       (SELECT DISTINCT IdAtleta,
                        Ano
        FROM EdicaoAtletaEvento)
     GROUP BY IdAtleta)
    WHERE Participations !=
    (SELECT MAX(P)
     FROM
       (SELECT DISTINCT COUNT(*) AS P
        FROM
          (SELECT DISTINCT IdAtleta,
                           Ano
           FROM EdicaoAtletaEvento)
        GROUP BY IdAtleta)))
        AND IdAtleta = Atleta.ID;
