-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 11/09/2024 às 00:31
-- Versão do servidor: 11.5.2-MariaDB
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
-- Estrutura para tabela `Agenda`
--

CREATE TABLE `Agenda` (
  `AGN_codigoCidadao` int(10) UNSIGNED NOT NULL,
  `dataAgendamento` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `CentroVacinacao`
--

CREATE TABLE `CentroVacinacao` (
  `CodigoCentro` smallint(5) UNSIGNED NOT NULL,
  `nomeCentro` varchar(128) NOT NULL,
  `enderecoCentro` varchar(256) NOT NULL,
  `capacidade` smallint(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Cidadao`
--

CREATE TABLE `Cidadao` (
  `codigoCidadao` int(10) UNSIGNED NOT NULL,
  `nomeCidadao` varchar(128) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `dataNascimento` date NOT NULL,
  `genero` varchar(64) NOT NULL,
  `enderecoCidadao` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `DoseReservada`
--

CREATE TABLE `DoseReservada` (
  `DOS_codigoCidadao` int(10) UNSIGNED NOT NULL,
  `DOS_dataAgendamento` datetime NOT NULL,
  `DOS_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `DOS_numLote` varchar(128) NOT NULL,
  `DOS_codigoCentro` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Empenho`
--

CREATE TABLE `Empenho` (
  `EMP_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `EMP_NumLote` varchar(128) NOT NULL,
  `EMP_codigoCentro` smallint(5) UNSIGNED NOT NULL,
  `dataCompletaEmpenho` datetime NOT NULL,
  `Quantidade` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
-- Estrutura para tabela `HistoricoDoCidadao`
--

CREATE TABLE `HistoricoDoCidadao` (
  `HDC_codigoCidadao` int(10) UNSIGNED NOT NULL,
  `HDC_dataAgendamento` datetime NOT NULL,
  `HDC_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `HDC_numLote` varchar(128) NOT NULL,
  `HDC_codigoCentro` smallint(5) UNSIGNED NOT NULL,
  `HDC_numeroDoRegistro` int(10) UNSIGNED NOT NULL,
  `HDC_numeroDeSequencia` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `RegistroDaAplicacao`
--

CREATE TABLE `RegistroDaAplicacao` (
  `RDA_codigoCidadao` int(10) UNSIGNED NOT NULL,
  `RDA_dataAgendamento` datetime NOT NULL,
  `RDA_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `RDA_numLote` varchar(128) NOT NULL,
  `RDA_codigoCentro` smallint(5) UNSIGNED NOT NULL,
  `numeroDoRegistro` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `RegrasDeAplicacao`
--

CREATE TABLE `RegrasDeAplicacao` (
  `codigoRegra` tinyint(3) UNSIGNED NOT NULL,
  `regra` varchar(128) NOT NULL,
  `observacoes` varchar(1024) DEFAULT NULL
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
  `quantidadePorDose` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `VacinaTemRegras`
--

CREATE TABLE `VacinaTemRegras` (
  `VTR_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `VTR_codigoRegra` tinyint(3) UNSIGNED NOT NULL,
  `observacoes` varchar(1024) DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Agenda`
--
ALTER TABLE `Agenda`
  ADD PRIMARY KEY (`AGN_codigoCidadao`,`dataAgendamento`),
  ADD KEY `dataAgendamento` (`dataAgendamento`);

--
-- Índices de tabela `CentroVacinacao`
--
ALTER TABLE `CentroVacinacao`
  ADD PRIMARY KEY (`CodigoCentro`);

--
-- Índices de tabela `Cidadao`
--
ALTER TABLE `Cidadao`
  ADD PRIMARY KEY (`codigoCidadao`);

--
-- Índices de tabela `DoseReservada`
--
ALTER TABLE `DoseReservada`
  ADD PRIMARY KEY (`DOS_codigoCidadao`,`DOS_dataAgendamento`,`DOS_codigoVacina`,`DOS_numLote`,`DOS_codigoCentro`),
  ADD KEY `FK_CodVacina-DOS` (`DOS_codigoVacina`),
  ADD KEY `FK_CodCentro-DOS` (`DOS_codigoCentro`),
  ADD KEY `FK_CodCidadao-DOS` (`DOS_codigoCidadao`),
  ADD KEY `FK_dataAgendamento-DOS` (`DOS_dataAgendamento`),
  ADD KEY `FK_numLote-DOS` (`DOS_numLote`);

--
-- Índices de tabela `Empenho`
--
ALTER TABLE `Empenho`
  ADD PRIMARY KEY (`EMP_codigoVacina`,`EMP_NumLote`,`EMP_codigoCentro`),
  ADD KEY `FK_NumLote-EMP` (`EMP_NumLote`),
  ADD KEY `FK_CodCnt-EMP` (`EMP_codigoCentro`),
  ADD KEY `EMP_codigoVacina` (`EMP_codigoVacina`);

--
-- Índices de tabela `Estoque`
--
ALTER TABLE `Estoque`
  ADD PRIMARY KEY (`EST_codigoVacina`,`numLote`),
  ADD KEY `FK_CodVac` (`EST_codigoVacina`),
  ADD KEY `numLote` (`numLote`);

--
-- Índices de tabela `HistoricoDoCidadao`
--
ALTER TABLE `HistoricoDoCidadao`
  ADD PRIMARY KEY (`HDC_codigoCidadao`,`HDC_dataAgendamento`,`HDC_codigoVacina`,`HDC_numLote`,`HDC_codigoCentro`,`HDC_numeroDoRegistro`,`HDC_numeroDeSequencia`),
  ADD KEY `FK_DataAgend-HDC` (`HDC_dataAgendamento`),
  ADD KEY `FK_CodigoVacina-HDC` (`HDC_codigoVacina`),
  ADD KEY `FK_numLote-HDC` (`HDC_numLote`),
  ADD KEY `FK_CodCidadao-HDC` (`HDC_codigoCidadao`),
  ADD KEY `FK_numRegistro-HDC` (`HDC_numeroDoRegistro`),
  ADD KEY `FK_CodCentro-HDC` (`HDC_codigoCentro`);

--
-- Índices de tabela `RegistroDaAplicacao`
--
ALTER TABLE `RegistroDaAplicacao`
  ADD PRIMARY KEY (`RDA_codigoCidadao`,`RDA_dataAgendamento`,`RDA_codigoVacina`,`RDA_numLote`,`RDA_codigoCentro`,`numeroDoRegistro`),
  ADD KEY `FK_codigoCidadao` (`RDA_codigoCidadao`),
  ADD KEY `FK_DataAgend-RDA` (`RDA_dataAgendamento`),
  ADD KEY `FK_CodVacina-RDA` (`RDA_codigoVacina`),
  ADD KEY `FK_NumLote-RDA` (`RDA_numLote`),
  ADD KEY `FK_CodCentro-RDA` (`RDA_codigoCentro`),
  ADD KEY `numeroDoRegistro` (`numeroDoRegistro`);

--
-- Índices de tabela `RegrasDeAplicacao`
--
ALTER TABLE `RegrasDeAplicacao`
  ADD PRIMARY KEY (`codigoRegra`);

--
-- Índices de tabela `Vacina`
--
ALTER TABLE `Vacina`
  ADD PRIMARY KEY (`codigoVacina`);

--
-- Índices de tabela `VacinaTemRegras`
--
ALTER TABLE `VacinaTemRegras`
  ADD PRIMARY KEY (`VTR_codigoVacina`,`VTR_codigoRegra`),
  ADD KEY `FK_CodReg-VTR` (`VTR_codigoRegra`),
  ADD KEY `VTR_codigoVacina` (`VTR_codigoVacina`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `Agenda`
--
ALTER TABLE `Agenda`
  ADD CONSTRAINT `FK_CodCid-AGN` FOREIGN KEY (`AGN_codigoCidadao`) REFERENCES `Cidadao` (`codigoCidadao`);

--
-- Restrições para tabelas `DoseReservada`
--
ALTER TABLE `DoseReservada`
  ADD CONSTRAINT `FK_CodCentro-DOS` FOREIGN KEY (`DOS_codigoCentro`) REFERENCES `CentroVacinacao` (`CodigoCentro`),
  ADD CONSTRAINT `FK_CodCid-DOS` FOREIGN KEY (`DOS_codigoCidadao`) REFERENCES `Cidadao` (`codigoCidadao`),
  ADD CONSTRAINT `FK_CodVacina-DOS` FOREIGN KEY (`DOS_codigoVacina`) REFERENCES `Vacina` (`codigoVacina`),
  ADD CONSTRAINT `FK_dataAgendamento-DOS` FOREIGN KEY (`DOS_dataAgendamento`) REFERENCES `Agenda` (`dataAgendamento`),
  ADD CONSTRAINT `FK_numLote-DOS` FOREIGN KEY (`DOS_numLote`) REFERENCES `Empenho` (`EMP_NumLote`);

--
-- Restrições para tabelas `Empenho`
--
ALTER TABLE `Empenho`
  ADD CONSTRAINT `FK_CodCnt-EMP` FOREIGN KEY (`EMP_codigoCentro`) REFERENCES `CentroVacinacao` (`CodigoCentro`),
  ADD CONSTRAINT `FK_CodVac-EMP` FOREIGN KEY (`EMP_codigoVacina`) REFERENCES `Vacina` (`codigoVacina`),
  ADD CONSTRAINT `FK_NumLote-EMP` FOREIGN KEY (`EMP_NumLote`) REFERENCES `Estoque` (`numLote`);

--
-- Restrições para tabelas `Estoque`
--
ALTER TABLE `Estoque`
  ADD CONSTRAINT `FK_CodVac` FOREIGN KEY (`EST_codigoVacina`) REFERENCES `Vacina` (`codigoVacina`);

--
-- Restrições para tabelas `HistoricoDoCidadao`
--
ALTER TABLE `HistoricoDoCidadao`
  ADD CONSTRAINT `FK_CodCentro-HDC` FOREIGN KEY (`HDC_codigoCentro`) REFERENCES `CentroVacinacao` (`CodigoCentro`),
  ADD CONSTRAINT `FK_CodCidadao-HDC` FOREIGN KEY (`HDC_codigoCidadao`) REFERENCES `Cidadao` (`codigoCidadao`),
  ADD CONSTRAINT `FK_CodVacina-HDC` FOREIGN KEY (`HDC_codigoVacina`) REFERENCES `Vacina` (`codigoVacina`),
  ADD CONSTRAINT `FK_DataAgend-HDC` FOREIGN KEY (`HDC_dataAgendamento`) REFERENCES `Agenda` (`dataAgendamento`),
  ADD CONSTRAINT `FK_numLote-HDC` FOREIGN KEY (`HDC_numLote`) REFERENCES `Estoque` (`numLote`),
  ADD CONSTRAINT `FK_numRegistro-HDC` FOREIGN KEY (`HDC_numeroDoRegistro`) REFERENCES `RegistroDaAplicacao` (`numeroDoRegistro`);

--
-- Restrições para tabelas `RegistroDaAplicacao`
--
ALTER TABLE `RegistroDaAplicacao`
  ADD CONSTRAINT `FK_CodCentro-RDA` FOREIGN KEY (`RDA_codigoCentro`) REFERENCES `CentroVacinacao` (`CodigoCentro`),
  ADD CONSTRAINT `FK_CodCidadao-RDA` FOREIGN KEY (`RDA_codigoCidadao`) REFERENCES `Cidadao` (`codigoCidadao`),
  ADD CONSTRAINT `FK_CodVacina-RDA` FOREIGN KEY (`RDA_codigoVacina`) REFERENCES `Vacina` (`codigoVacina`),
  ADD CONSTRAINT `FK_DataAgend-RDA` FOREIGN KEY (`RDA_dataAgendamento`) REFERENCES `Agenda` (`dataAgendamento`),
  ADD CONSTRAINT `FK_NumLote-RDA` FOREIGN KEY (`RDA_numLote`) REFERENCES `Estoque` (`numLote`);

--
-- Restrições para tabelas `VacinaTemRegras`
--
ALTER TABLE `VacinaTemRegras`
  ADD CONSTRAINT `FK_CodReg-VTR` FOREIGN KEY (`VTR_codigoRegra`) REFERENCES `RegrasDeAplicacao` (`codigoRegra`),
  ADD CONSTRAINT `FK_CodVac-VTR` FOREIGN KEY (`VTR_codigoVacina`) REFERENCES `Vacina` (`codigoVacina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
