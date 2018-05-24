.mode columns
.headers on
.nullvalue NULL

SELECT Atleta.Nome,
       P as NumberParticipations
FROM
  (SELECT IdAtleta,
          COUNT(*) AS P
   FROM
     (SELECT DISTINCT IdAtleta,
                      Ano
      FROM EdicaoAtletaEvento)
   GROUP BY IdAtleta)
   JOIN Atleta
WHERE P =
    ( SELECT DISTINCT Participations
     FROM
       (SELECT DISTINCT COUNT(*) AS Participations
        FROM
          (SELECT DISTINCT IdAtleta,
                           Ano
           FROM EdicaoAtletaEvento)
        GROUP BY IdAtleta)
     WHERE
         (SELECT COUNT(*)
          FROM
            (SELECT DISTINCT COUNT(*) AS P
             FROM
               (SELECT DISTINCT IdAtleta,
                                Ano
                FROM EdicaoAtletaEvento)
             GROUP BY IdAtleta)
          WHERE P > Participations) = 1)
          AND IdAtleta = Atleta.ID;
