SELECT * FROM Album a ;

SELECT COUNT(*) as records FROM Album a ;

SELECT COUNT(*) FROM Album a WHERE  Column1  is NOT NULL;
SELECT AlbumId, Title FROM Album a WHere Column1 IS NULL;

SELECT * FROM Artist a;

-- Caracterizando os registros dos artistas
SELECT a2.ArtistId , a2.Name, COUNT(*) as Records FROM Album a INNER JOIN Artist a2 GROUP BY 1; -- Quantidade de Registro por cada artista

SELECT a2.ArtistId , a2.Name, COUNT(*) as Records FROM Album a INNER JOIN Artist a2 GROUP BY 1 ORDER BY Records ASC -- Quantidade de Registro por cada artista por ordem crescente

SELECT a2.ArtistId , a2.Name, COUNT(*) as Records FROM Album a INNER JOIN Artist a2 GROUP BY 1 ORDER BY Records LIMIT 1;-- Qual artista tem mais Registro