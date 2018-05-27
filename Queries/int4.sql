.mode columns .headers on .nullvalue NULL
 

 SELECT
 Desporto.nome, Modalidade.nome, Ano, Atleta.nome, Posicao
 FROM EdicaoAtletaEvento, Evento, Modalidade, Desporto, Atleta
 WHERE Atleta.ID = EdicaoAtletaEvento.idAtleta
 AND Modalidade.IdDesporto = Desporto.ID
 AND Modalidade.ID = Evento.IdModalidade
 AND EdicaoAtletaEvento.IdEvento = Evento.ID
 AND (Posicao = 1 OR Posicao = 2 OR Posicao = 3)
 ORDER BY Ano, Posicao;

