SELECT
	Nome,
	Ano
FROM Filmes;


SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC;


SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';


SELECT
	Nome, 
	Ano, 
	duracao
From Filmes
WHERE Ano = '1997'


SELECT
	Nome, 
	Ano, 
	Duracao
From Filmes
WHERE Ano > 2000


SELECT
	Nome, 
	Ano, 
	Duracao
From Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC


SELECT 
	Ano, 
	COUNT(*) Quantidade 
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;


SELECT * 
FROM Atores
WHERE Genero = 'M'


SELECT 
	f.Nome, 
	g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;


SELECT 
	f.Nome, 
	g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';


SELECT 
	f.Nome, 
	a.PrimeiroNome, 
	a.UltimoNome, 
	ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;
