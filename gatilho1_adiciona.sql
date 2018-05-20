CREATE TRIGGER sameSex
BEFORE
INSERT ON EdicaoAtletaEvento WHEN
  (SELECT Sexo
   FROM Atleta
   WHERE ID = New.IdAtleta) NOT LIKE
  (SELECT Modalidade.Sexo
   FROM Evento
   JOIN Modalidade
   WHERE Evento.IdModalidade = Modalidade.ID
     AND Evento.ID = New.IdEvento) BEGIN
SELECT RAISE
  (ROLLBACK, "Invalid sex to participate in the event."); END
