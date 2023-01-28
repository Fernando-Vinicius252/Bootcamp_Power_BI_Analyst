-- ANALISE DESCRITIVA:

-- Caracterizando os registros dos artistas
SELECT * FROM Album a ;

SELECT COUNT(*) as records FROM Album a ;

SELECT COUNT(*) FROM Album a WHERE  Column1  is NOT NULL;
SELECT AlbumId, Title FROM Album a WHere Column1 IS NULL;

SELECT * FROM Artist a;

SELECT a2.ArtistId , a2.Name, COUNT(*) as Records FROM Album a INNER JOIN Artist a2 GROUP BY 1; -- Quantidade de Registro por cada artista

SELECT a2.ArtistId , a2.Name, COUNT(*) as Records FROM Album a INNER JOIN Artist a2 GROUP BY 1 ORDER BY Records ASC; -- Quantidade de Registro por cada artista por ordem crescente

SELECT a2.ArtistId , a2.Name, COUNT(*) as Records FROM Album a INNER JOIN Artist a2 GROUP BY 1 ORDER BY Records LIMIT 1; -- Qual artista tem mais Registro

SELECT * FROM Customer c LIMIT 10;

SELECT State, COUNT(*) AS Total FROM Customer c GROUP BY 1 ORDER BY  Total DESC Limit 10;

SELECT FirstName, Address FROM Customer c;


-- Caracterizando os registros dos Costumers 

-- Quantos clientes moram na Broadway?
SELECT COUNT(*) FROM Customer c  WHERE Address Like '%Broadway%'

-- Verificar company dos clientes
SELECT  COUNT(*)  FROM Customer c WHERE Company IS NOT NULL;

SELECT  FirstName, Company  FROM Customer c WHERE Company IS NULL;

SELECT  * FROM Employee e;

-- Quais dos clientes são colaboradores
SELECT c.FirstName, c.LastName  FROM Customer c
	WHERE Company IS NULL AND  c.FirstName IN
		(SELECT E.FirstName FROM Employee e);
	
SELECT  c.FirstName, c.LastName FROM Customer c INNER JOIN Employee e WHERE c.FirstName = e.FirstName;

-- Caracterizando os registros de Invoice
SELECT * FROM Invoice i LIMIT 10;
SELECT * FROM InvoiceLine il ORDER BY UnitPrice DESC LIMIT 10;

SELECT UnitPrice, COUNT(*) AS Record  FROM  InvoiceLine il GROUP BY UnitPrice;

SELECT * FROM InvoiceLine il  INNER JOIN Invoice i limit 2;

-- Clientes que possuem Invoice Associados e a quantidade para cada cliente.
SELECT c.CustomerId, c.FirstName, COUNT(*) AS Record FROM Invoice i
	INNER JOIN InvoiceLine i
	INNER JOIN Customer c ON c.CustomerId = i.CustomerId
	GROUP BY 1 ORDER BY Record;

SELECT i.CustomerId, il.InvoiceLineId FROM Invoice i
	INNER JOIN InvoiceLine il 
	INNER JOIN Customer c ON c.CustomerId = i.CustomerId
	GROUP BY 1 
	LIMIT 100;



