-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para cadastroveiculos
CREATE DATABASE IF NOT EXISTS `cadastroveiculos` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `cadastroveiculos`;

-- Copiando estrutura para tabela cadastroveiculos.locacoes
CREATE TABLE IF NOT EXISTS `locacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataLocacao` date DEFAULT NULL,
  `valorLocacao` float DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_veiculo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_veiculo` (`id_veiculo`),
  CONSTRAINT `locacoes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `locacoes_ibfk_2` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela cadastroveiculos.locacoes: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela cadastroveiculos.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela cadastroveiculos.usuario: ~2 rows (aproximadamente)
INSERT INTO `usuario` (`id`, `nome`, `senha`) VALUES
	(1, 'Miriam', '123'),
	(2, 'Admin', '13@45');

-- Copiando estrutura para tabela cadastroveiculos.veiculos
CREATE TABLE IF NOT EXISTS `veiculos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `placas` varchar(45) DEFAULT NULL,
  `locado` varchar(1) DEFAULT NULL,
  `valorDiaria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela cadastroveiculos.veiculos: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
