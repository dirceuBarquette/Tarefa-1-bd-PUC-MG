-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 13/09/2024 às 22:26
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
-- Banco de dados: `Vacinado2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Agenda`
--

CREATE TABLE `Agenda` (
  `Protocolo` int(10) UNSIGNED NOT NULL,
  `AGN_codigoCidadao` int(10) UNSIGNED NOT NULL,
  `dataAgendada` datetime NOT NULL
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
  `dataNascimento` date NOT NULL,
  `genero` varchar(64) NOT NULL,
  `enderecoCidadao` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `DoseReservada`
--

CREATE TABLE `DoseReservada` (
  `DOS_protocoloAgendamento` int(10) UNSIGNED NOT NULL,
  `DOS_codigoCidadao` int(10) UNSIGNED NOT NULL,
  `DOS_dataAgendada` datetime NOT NULL,
  `DOS_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `DOS_numLote` varchar(128) NOT NULL,
  `DOS_codigoCentro` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Acionadores `DoseReservada`
--
DELIMITER $$
CREATE TRIGGER `Decrementa_Empenho` AFTER INSERT ON `DoseReservada` FOR EACH ROW UPDATE Empenho SET quantidade=quantidade - 1
where EMP_numLote = NEW.DOS_numLote
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Empenho`
--

CREATE TABLE `Empenho` (
  `EMP_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `EMP_numLote` varchar(128) NOT NULL,
  `EMP_codigoCentro` smallint(5) UNSIGNED NOT NULL,
  `dataCompletaEmpenho` datetime NOT NULL,
  `quantidade` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Acionadores `Empenho`
--
DELIMITER $$
CREATE TRIGGER `Decrementa_Estoque` AFTER INSERT ON `Empenho` FOR EACH ROW UPDATE Estoque SET emEstoque=0
where numLote = NEW.EMP_numLote
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Estoque`
--

CREATE TABLE `Estoque` (
  `EST_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `numLote` varchar(128) NOT NULL,
  `dataFabricacao` date NOT NULL,
  `fimValidadeEmDias` int(11) NOT NULL,
  `emEstoque` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `HistoricoDoCidadao`
--

CREATE TABLE `HistoricoDoCidadao` (
  `HDC_protocoloAgendamento` int(10) UNSIGNED NOT NULL,
  `HDC_codigoCidadao` int(10) UNSIGNED NOT NULL,
  `HDC_dataAgendada` datetime NOT NULL,
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
  `RDA_protocoloAgendamento` int(10) UNSIGNED NOT NULL,
  `RDA_codigoCidadao` int(10) UNSIGNED NOT NULL,
  `RDA_dataAgendada` datetime NOT NULL,
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
  `codigoRegra` int(10) UNSIGNED NOT NULL,
  `regra` varchar(128) NOT NULL,
  `valorPadrao` varchar(16) NOT NULL,
  `observacoes` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Vacina`
--

CREATE TABLE `Vacina` (
  `codigoVacina` int(10) UNSIGNED NOT NULL,
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
  `valor` varchar(32) NOT NULL,
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
  ADD PRIMARY KEY (`Protocolo`,`AGN_codigoCidadao`,`dataAgendada`),
  ADD KEY `KEY_Agenda` (`Protocolo`,`AGN_codigoCidadao`,`dataAgendada`),
  ADD KEY `FK_CodCid-AGN` (`AGN_codigoCidadao`);

--
-- Índices de tabela `CentroVacinacao`
--
ALTER TABLE `CentroVacinacao`
  ADD PRIMARY KEY (`CodigoCentro`),
  ADD KEY `CodigoCentro` (`CodigoCentro`),
  ADD KEY `nomeCentro` (`nomeCentro`);

--
-- Índices de tabela `Cidadao`
--
ALTER TABLE `Cidadao`
  ADD PRIMARY KEY (`codigoCidadao`);

--
-- Índices de tabela `DoseReservada`
--
ALTER TABLE `DoseReservada`
  ADD PRIMARY KEY (`DOS_protocoloAgendamento`,`DOS_codigoCidadao`,`DOS_dataAgendada`,`DOS_codigoVacina`,`DOS_numLote`,`DOS_codigoCentro`),
  ADD KEY `DOS_Primarias-AGN` (`DOS_protocoloAgendamento`,`DOS_codigoCidadao`,`DOS_dataAgendada`),
  ADD KEY `DOS_Primarias-EMP` (`DOS_codigoVacina`,`DOS_numLote`,`DOS_codigoCentro`);

--
-- Índices de tabela `Empenho`
--
ALTER TABLE `Empenho`
  ADD PRIMARY KEY (`EMP_codigoVacina`,`EMP_numLote`,`EMP_codigoCentro`),
  ADD KEY `EMP_Primarias-EST` (`EMP_codigoVacina`,`EMP_numLote`),
  ADD KEY `EMP_codigoCentro` (`EMP_codigoCentro`);

--
-- Índices de tabela `Estoque`
--
ALTER TABLE `Estoque`
  ADD PRIMARY KEY (`EST_codigoVacina`,`numLote`),
  ADD KEY `EST_primarias` (`EST_codigoVacina`,`numLote`);

--
-- Índices de tabela `HistoricoDoCidadao`
--
ALTER TABLE `HistoricoDoCidadao`
  ADD PRIMARY KEY (`HDC_protocoloAgendamento`,`HDC_codigoCidadao`,`HDC_dataAgendada`,`HDC_codigoVacina`,`HDC_numLote`,`HDC_codigoCentro`,`HDC_numeroDoRegistro`,`HDC_numeroDeSequencia`),
  ADD KEY `HDC_Primarias-AGN-RDA` (`HDC_protocoloAgendamento`,`HDC_codigoCidadao`,`HDC_dataAgendada`),
  ADD KEY `HDC_Primarias-EMP-RDA` (`HDC_codigoVacina`,`HDC_numLote`,`HDC_codigoCentro`),
  ADD KEY `HDC_numeroDoRegistro` (`HDC_numeroDoRegistro`);

--
-- Índices de tabela `RegistroDaAplicacao`
--
ALTER TABLE `RegistroDaAplicacao`
  ADD PRIMARY KEY (`numeroDoRegistro`,`RDA_codigoCentro`,`RDA_numLote`,`RDA_codigoVacina`,`RDA_dataAgendada`,`RDA_codigoCidadao`,`RDA_protocoloAgendamento`),
  ADD KEY `RDA_Primarias-AGN` (`RDA_protocoloAgendamento`,`RDA_codigoCidadao`,`RDA_dataAgendada`),
  ADD KEY `RDA_Primarias-EMP` (`RDA_codigoVacina`,`RDA_numLote`,`RDA_codigoCentro`),
  ADD KEY `numeroDoRegistro` (`numeroDoRegistro`);

--
-- Índices de tabela `RegrasDeAplicacao`
--
ALTER TABLE `RegrasDeAplicacao`
  ADD PRIMARY KEY (`codigoRegra`),
  ADD KEY `regra` (`regra`);

--
-- Índices de tabela `Vacina`
--
ALTER TABLE `Vacina`
  ADD PRIMARY KEY (`codigoVacina`),
  ADD KEY `codigoVacina` (`codigoVacina`),
  ADD KEY `nome` (`nome`);

--
-- Índices de tabela `VacinaTemRegras`
--
ALTER TABLE `VacinaTemRegras`
  ADD PRIMARY KEY (`VTR_codigoVacina`,`VTR_codigoRegra`),
  ADD KEY `VTR_codigoVacina` (`VTR_codigoVacina`,`VTR_codigoRegra`),
  ADD KEY `FK_CodReg-VTR` (`VTR_codigoRegra`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Agenda`
--
ALTER TABLE `Agenda`
  MODIFY `Protocolo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `CentroVacinacao`
--
ALTER TABLE `CentroVacinacao`
  MODIFY `CodigoCentro` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Cidadao`
--
ALTER TABLE `Cidadao`
  MODIFY `codigoCidadao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `RegistroDaAplicacao`
--
ALTER TABLE `RegistroDaAplicacao`
  MODIFY `numeroDoRegistro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `RegrasDeAplicacao`
--
ALTER TABLE `RegrasDeAplicacao`
  MODIFY `codigoRegra` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Vacina`
--
ALTER TABLE `Vacina`
  MODIFY `codigoVacina` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `FK_Primarias-AGN` FOREIGN KEY (`DOS_protocoloAgendamento`,`DOS_codigoCidadao`,`DOS_dataAgendada`) REFERENCES `Agenda` (`Protocolo`, `AGN_codigoCidadao`, `dataAgendada`),
  ADD CONSTRAINT `FK_Primarias-EMP` FOREIGN KEY (`DOS_codigoVacina`,`DOS_numLote`) REFERENCES `Empenho` (`EMP_codigoVacina`, `EMP_numLote`);

--
-- Restrições para tabelas `Empenho`
--
ALTER TABLE `Empenho`
  ADD CONSTRAINT `FK_CodCentro` FOREIGN KEY (`EMP_codigoCentro`) REFERENCES `CentroVacinacao` (`CodigoCentro`),
  ADD CONSTRAINT `FK_Primarias-EST` FOREIGN KEY (`EMP_codigoVacina`,`EMP_numLote`) REFERENCES `Estoque` (`EST_codigoVacina`, `numLote`);

--
-- Restrições para tabelas `HistoricoDoCidadao`
--
ALTER TABLE `HistoricoDoCidadao`
  ADD CONSTRAINT `FK_Primarias-AGN-RDA-HDC` FOREIGN KEY (`HDC_protocoloAgendamento`,`HDC_codigoCidadao`,`HDC_dataAgendada`) REFERENCES `RegistroDaAplicacao` (`RDA_protocoloAgendamento`, `RDA_codigoCidadao`, `RDA_dataAgendada`),
  ADD CONSTRAINT `FK_Primarias-EMP-RDA-HDC` FOREIGN KEY (`HDC_codigoVacina`,`HDC_numLote`,`HDC_codigoCentro`) REFERENCES `RegistroDaAplicacao` (`RDA_codigoVacina`, `RDA_numLote`, `RDA_codigoCentro`);

--
-- Restrições para tabelas `RegistroDaAplicacao`
--
ALTER TABLE `RegistroDaAplicacao`
  ADD CONSTRAINT `FK_Primarias-AGN-RDA` FOREIGN KEY (`RDA_protocoloAgendamento`,`RDA_codigoCidadao`,`RDA_dataAgendada`) REFERENCES `DoseReservada` (`DOS_protocoloAgendamento`, `DOS_codigoCidadao`, `DOS_dataAgendada`),
  ADD CONSTRAINT `FK_Primarias-EMP-RDA` FOREIGN KEY (`RDA_codigoVacina`,`RDA_numLote`,`RDA_codigoCentro`) REFERENCES `DoseReservada` (`DOS_codigoVacina`, `DOS_numLote`, `DOS_codigoCentro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
