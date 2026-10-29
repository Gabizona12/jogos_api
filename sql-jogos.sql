CREATE TABLE `generos` (
  `genero_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`genero_id`)
);
CREATE TABLE `jogos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `desenvolvedora` varchar(200) DEFAULT NULL,
  `sinopse` varchar(600) DEFAULT NULL,
  `genero_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_jogos_generos` (`genero_id`),
  CONSTRAINT `fk_jogos_generos` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`genero_id`)
);
