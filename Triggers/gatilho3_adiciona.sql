CREATE TRIGGER checkPosition
BEFORE
INSERT ON EdicaoAtletaEvento WHEN EXISTS (
SELECT *
FROM EdicaoAtletaEvento
WHERE IdEvento = New.IdEvento
  AND Ano = New.Ano
  AND ( (Posicao < New.Posicao
         AND Valor > New.Valor)
  OR ((Posicao > New.Posicao
       AND Valor < New.Valor)))) BEGIN
  SELECT RAISE
    (ROLLBACK, "Invalid position at the event."); END
