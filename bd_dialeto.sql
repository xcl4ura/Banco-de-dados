
--
-- Table structure for table `tb_aulas`
--

DROP TABLE IF EXISTS `tb_aulas`;

CREATE TABLE `tb_aulas` (
  `id_aula` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL,
  `nivel` int(11) NOT NULL,
  `data_hora` datetime NOT NULL,
  PRIMARY KEY (`id_aula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


LOCK TABLES `tb_aulas` WRITE;

INSERT INTO `tb_aulas` VALUES (1,'Aula 1','a',1,'2021-06-08 21:08:41');

UNLOCK TABLES;

--
-- Table structure for table `tb_aulas_conteudos`
--

DROP TABLE IF EXISTS `tb_aulas_conteudos`;

CREATE TABLE `tb_aulas_conteudos` (
  `id_conteudo` int(11) NOT NULL AUTO_INCREMENT,
  `id_aula` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL,
  `link_conteudo` varchar(500) NOT NULL,
  `data_hora` datetime NOT NULL,
  PRIMARY KEY (`id_conteudo`),
  KEY `tb_aulas_conteudos_fk_1` (`id_aula`),
  CONSTRAINT `tb_aulas_conteudos_fk_1` FOREIGN KEY (`id_aula`) REFERENCES `tb_aulas` (`id_aula`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_aulas_conteudos`
--

LOCK TABLES `tb_aulas_conteudos` WRITE;

INSERT INTO `tb_aulas_conteudos` VALUES (2,1,'Conteudo ABC','a','http://linka','2021-06-08 21:11:16'),(3,1,'Conteudo DEF','a','http://linkb','2021-06-08 21:11:40'),(4,1,'Conteudo HIJ','a','http://linkc','2021-06-08 21:11:51');

UNLOCK TABLES;

--
-- Table structure for table `tb_aulas_exercicios`
--

DROP TABLE IF EXISTS `tb_aulas_exercicios`;

CREATE TABLE `tb_aulas_exercicios` (
  `id_exercicio` int(11) NOT NULL,
  `id_aula` int(11) NOT NULL,
  `datahora` datetime NOT NULL,
  KEY `tb_aulas_exercicios_fk_1` (`id_exercicio`),
  KEY `tb_aulas_exercicios_fk_2` (`id_aula`),
  CONSTRAINT `tb_aulas_exercicios_fk_1` FOREIGN KEY (`id_exercicio`) REFERENCES `tb_exercicios` (`id_exercicio`),
  CONSTRAINT `tb_aulas_exercicios_fk_2` FOREIGN KEY (`id_aula`) REFERENCES `tb_aulas` (`id_aula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `tb_aulas_exercicios`
--

LOCK TABLES `tb_aulas_exercicios` WRITE;

INSERT INTO `tb_aulas_exercicios` VALUES (1,1,'2021-06-08 21:16:43'),(2,1,'2021-06-08 21:16:47'),(3,1,'2021-06-08 21:16:49'),(4,1,'2021-06-08 21:16:43');

UNLOCK TABLES;

--
-- Table structure for table `tb_aulas_usuarios`
--

DROP TABLE IF EXISTS `tb_aulas_usuarios`;

CREATE TABLE `tb_aulas_usuarios` (
  `id_aula` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `duvidas` varchar(255) DEFAULT NULL,
  `data_hora` datetime NOT NULL,
  KEY `tb_aula_usuario_fk_1` (`id_aula`),
  KEY `tb_aula_usuario_fk_2` (`id_usuario`),
  CONSTRAINT `tb_aula_usuario_fk_1` FOREIGN KEY (`id_aula`) REFERENCES `tb_aulas` (`id_aula`),
  CONSTRAINT `tb_aula_usuario_fk_2` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `tb_aulas_usuarios`
--

LOCK TABLES `tb_aulas_usuarios` WRITE;

INSERT INTO `tb_aulas_usuarios` VALUES (1,1,'','2021-06-08 21:18:40');

UNLOCK TABLES;

--
-- Table structure for table `tb_exercicios`
--

DROP TABLE IF EXISTS `tb_exercicios`;


CREATE TABLE `tb_exercicios` (
  `id_exercicio` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `pontos` float(8,2) NOT NULL,
  `nivel` int(11) NOT NULL,
  `datahora` datetime NOT NULL,
  PRIMARY KEY (`id_exercicio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


--
-- Dumping data for table `tb_exercicios`
--

LOCK TABLES `tb_exercicios` WRITE;

INSERT INTO `tb_exercicios` VALUES (1,'Exercicio 1','Quizz',10.00,1,'2021-06-08 21:15:11'),(2,'Exercicio 2','Quizz',15.00,2,'2021-06-08 21:15:25'),(3,'Exercicio 3','Forca',40.00,5,'2021-06-08 21:15:38'),(4,'Exercicio 4','Caça Palavras',50.00,1,'2021-06-08 21:15:11');

UNLOCK TABLES;

--
-- Table structure for table `tb_exercicios_alunos`
--

DROP TABLE IF EXISTS `tb_exercicios_alunos`;
CREATE TABLE `tb_exercicios_alunos` (
  `id_exercicio` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `datahora` datetime NOT NULL,
  KEY `tb_exercicios_alunos_fk_1` (`id_exercicio`),
  KEY `tb_exercicios_alunos_fk_2` (`id_usuario`),
  CONSTRAINT `tb_exercicios_alunos_fk_1` FOREIGN KEY (`id_exercicio`) REFERENCES `tb_exercicios` (`id_exercicio`),
  CONSTRAINT `tb_exercicios_alunos_fk_2` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `tb_exercicios_alunos`
--

LOCK TABLES `tb_exercicios_alunos` WRITE;

INSERT INTO `tb_exercicios_alunos` VALUES (1,1,'s','2021-06-08 21:19:34'),(2,1,'s','2021-06-08 21:19:40'),(3,1,'e','2021-06-08 21:19:45'),(4,1,'s','2021-06-08 21:19:34');

UNLOCK TABLES;

--
-- Table structure for table `tb_usuarios`
--

DROP TABLE IF EXISTS `tb_usuarios`;

CREATE TABLE `tb_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `formacao_escolar` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `cpf` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `login` varchar(25) NOT NULL,
  `resumo` varchar(300) DEFAULT NULL,
  `tipo_usuario` varchar(1) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


--
-- Dumping data for table `tb_usuarios`
--

LOCK TABLES `tb_usuarios` WRITE;

INSERT INTO `tb_usuarios` VALUES (1,'Diego','Santos','2002-04-10','Ensino Medio Completo','diego@teste.com.br','1111111','323212231','123','diegosantos',NULL,'a','a');

UNLOCK TABLES;



