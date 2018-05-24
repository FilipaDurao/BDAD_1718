.mode columns
.headers on
.nullvalue NULL

SELECT DISTINCT Atleta.Nome as AtletaOlimpico, Desporto.Nome as DesportoOlimpico
FROM Atleta, Desporto
WHERE   (SELECT COUNT(*)
            FROM Evento, Atleta, EdicaoAtletaEvento, Modalidade, Desporto
            WHERE   EdicaoAtletaEvento.IdAtleta = Atleta.ID
                AND EdicaoAtletaEvento.IdEvento = Evento.ID
                AND Modalidade.ID = Evento.IdModalidade
                AND Desporto.ID = Modalidade.IdDesporto
                AND Atleta.Nome = AtletaOlimpico) = 
         (SELECT DISTINCT COUNT(*)
            FROM Desporto, Modalidade
            WHERE   Desporto.Nome = DesportoOlimpico
                AND Modalidade.IdDesporto = Desporto.ID)/2
GROUP BY AtletaOlimpico, DesportoOlimpico;
