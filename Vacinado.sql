-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 10/09/2024 às 12:27
-- Versão do servidor: 11.4.2-MariaDB
-- Versão do PHP: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Vacinado`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Estoque`
--

CREATE TABLE `Estoque` (
  `EST_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `numLote` varchar(128) NOT NULL,
  `dataFabricacao` date NOT NULL,
  `fimValidadeEmDias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Vacina`
--

CREATE TABLE `Vacina` (
  `codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `nome` varchar(128) NOT NULL,
  `fabricante` varchar(128) NOT NULL,
  `prazoValidade` smallint(5) UNSIGNED NOT NULL,
  `quantidadePorLote` smallint(5) UNSIGNED NOT NULL,
  `metodoDeAplicacao` varchar(128) NOT NULL,
  `quantidadeDeDoses` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `quantidadePorDose` varchar(128) NOT NULL,
  `intervaloEntreDosesMin_MesmaVacina` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `intervaloEntreDosesMax_MesmaVacina` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `intervaloEntreDosesMin_OutraVacina` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `intervaloEntreDosesMax_OutraVacina` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `quantidadeEntreDosesMin_MesmaVacina` varchar(128) NOT NULL,
  `quantidadeEntreDosesMax_MesmaVacina` varchar(128) NOT NULL,
  `quantidadeEntreDosesMin_OutraVacina` varchar(128) NOT NULL,
  `quantidadeEntreDosesMax_OutraVacina` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Estoque`
--
ALTER TABLE `Estoque`
  ADD PRIMARY KEY (`numLote`),
  ADD KEY `FK_CodVac` (`EST_codigoVacina`);

--
-- Índices de tabela `Vacina`
--
ALTER TABLE `Vacina`
  ADD PRIMARY KEY (`codigoVacina`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `Estoque`
--
ALTER TABLE `Estoque`
  ADD CONSTRAINT `FK_CodVac` FOREIGN KEY (`EST_codigoVacina`) REFERENCES `Vacina` (`codigoVacina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
