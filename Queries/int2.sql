.mode columns .headers on .nullvalue NULL
SELECT DISTINCT A.Nome,

  (SELECT COUNT(*)
   FROM EdicaoAtletaEvento
   JOIN Evento
   JOIN TipoDeEvento
   JOIN Atleta
   WHERE EdicaoAtletaEvento.IdEvento = Evento.ID
     AND Evento.IdTipoDeEvento = TipoDeEvento.ID
     AND TipoDeEvento.Nome = "Final"
     AND Atleta.ID = EdicaoAtletaEvento.IdAtleta
     AND A.ID = Atleta.ID
     AND (EdicaoAtletaEvento.Posicao == 1)) AS Gold,

  (SELECT COUNT(*)
   FROM EdicaoAtletaEvento
   JOIN Evento
   JOIN TipoDeEvento
   JOIN Atleta
   WHERE EdicaoAtletaEvento.IdEvento = Evento.ID
     AND Evento.IdTipoDeEvento = TipoDeEvento.ID
     AND TipoDeEvento.Nome = "Final"
     AND Atleta.ID = EdicaoAtletaEvento.IdAtleta
     AND A.ID = Atleta.ID
     AND (EdicaoAtletaEvento.Posicao == 2)) AS Silver,

  (SELECT COUNT(*)
   FROM EdicaoAtletaEvento
   JOIN Evento
   JOIN TipoDeEvento
   JOIN Atleta
   WHERE EdicaoAtletaEvento.IdEvento = Evento.ID
     AND Evento.IdTipoDeEvento = TipoDeEvento.ID
     AND TipoDeEvento.Nome = "Final"
     AND Atleta.ID = EdicaoAtletaEvento.IdAtleta
     AND A.ID = Atleta.ID
     AND (EdicaoAtletaEvento.Posicao == 3)) AS Bronze
FROM Atleta A
ORDER BY Gold DESC,
         Silver DESC,
         Bronze DESC;
