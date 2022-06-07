USE seguro;

SELECT * FROM acidente;
SELECT * FROM participou;
SELECT * FROM pessoa;
SELECT * FROM carro;
SELECT * FROM possui;

# Consulta A
# Ache o número total de pessoas que possuíram carros que estiveram envolvidos em acidentes em 2019.

SELECT COUNT(DISTINCT p.id_motorista) AS total_pessoas
FROM participou AS p, acidente AS a 
WHERE p.num_sinistro = a.num_sinistro AND a.data_acidente LIKE '2019%';

# Consulta B
# Ache o número de acidentes em que os carros pertencentes a John Smith estiveram envolvidos.

SELECT COUNT(participou.num_sinistro) AS acidentes_john_smith
FROM pessoa, participou, possui 
WHERE  participou.renavam = possui.renavam AND possui.id_motorista = pessoa.id_motorista AND pessoa.nome = 'John Smith';

# Consulta C
# Ache o endereço dos motoristas que tiveram o valor total de dados de sinistros igual ou superior a soma dos danos de sinistros de John Smith.

SELECT endereco
FROM pessoa p
WHERE p.id_motorista IN (SELECT id_motorista
						 FROM (SELECT pes.id_motorista AS id_motorista, pes.nome As nome, SUM(p.valor_dano) As montante
	                           FROM participou AS p, pessoa AS pes 
                               WHERE p.id_motorista = pes.id_motorista AND  pes.nome != 'John Smith'
							   GROUP BY p.id_motorista) AS T1 JOIN  (SELECT SUM(p.valor_dano) AS montante 
																	 FROM participou AS p, pessoa AS pes 
																	 WHERE p.id_motorista = pes.id_motorista AND pes.nome = 'John Smith') AS T2
						 ON T1.montante > T2.montante);

# Consulta D
# Ache o ano dos carros que mais se envolveram em sinistros.

SELECT c.ano
FROM carro AS c
WHERE c.renavam IN (SELECT DISTINCT p.renavam FROM participou AS p)
GROUP BY c.ano
ORDER BY c.ano;

# Consulta E
# Ache, por ano do carro, a soma dos danos dos sinistros.

SELECT participou.renavam, SUM(participou.valor_dano) AS montante_danos, carro.ano
FROM participou JOIN carro 
ON participou.renavam = carro.renavam
GROUP BY participou.renavam, carro.ano;
