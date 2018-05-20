CREATE TRIGGER newRecord AFTER
INSERT ON EdicaoAtletaEvento WHEN New.Valor <
  (SELECT Recorde.Valor
   FROM Evento
   JOIN Modalidade
   JOIN Recorde
   WHERE Evento.IdModalidade = Modalidade.ID
     AND Recorde.IdModalidade = Modalidade.ID
     AND Evento.ID = New.IdEvento) BEGIN
UPDATE Recorde
SET Valor = New.Valor,
    DATA =
  (SELECT Evento.Data
   FROM Evento
   JOIN Modalidade
   WHERE Evento.IdModalidade = Modalidade.ID
     AND Evento.ID = New.IdEvento), IdAtleta = New.IdAtleta
WHERE Recorde.IdModalidade =
    (SELECT Modalidade.ID
     FROM Evento
     JOIN Modalidade
     WHERE Evento.IdModalidade = Modalidade.ID
       AND Evento.ID = New.IdEvento)
  AND New.Valor < Recorde.Valor; END
