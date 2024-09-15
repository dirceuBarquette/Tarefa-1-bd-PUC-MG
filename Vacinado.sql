-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 15/09/2024 às 10:01
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

DELIMITER $$
--
-- Funções
--
DROP FUNCTION IF EXISTS `AtualizaQuantPorLote`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `AtualizaQuantPorLote` (`codVacina` INT UNSIGNED) RETURNS SMALLINT(6) COMMENT 'Valor utilizado para ser inserido em Empenho.quantidade' RETURN
(SELECT quantidadePorLote FROM Vacina WHERE Vacina.codigoVacina = codVacina)$$

DROP FUNCTION IF EXISTS `InsereUltimoNumSeq`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `InsereUltimoNumSeq` (`codCidadao` INT UNSIGNED) RETURNS SMALLINT(6) COMMENT 'Atualiza número de sequência de vacinação no histórico do usuári' RETURN (SELECT IFNULL(MAX(HDC_numeroDeSequencia)+1,1) FROM HistoricoDoCidadao WHERE HDC_codigoCidadao = codCidadao)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Agenda`
--

DROP TABLE IF EXISTS `Agenda`;
CREATE TABLE `Agenda` (
  `protocolo` int(10) UNSIGNED NOT NULL,
  `AGN_codigoCidadao` int(10) UNSIGNED NOT NULL,
  `dataAgendada` datetime NOT NULL,
  `dataAgendamento` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Armazena agendamentos';

-- --------------------------------------------------------

--
-- Estrutura para tabela `CentroVacinacao`
--

DROP TABLE IF EXISTS `CentroVacinacao`;
CREATE TABLE `CentroVacinacao` (
  `CodigoCentro` smallint(5) UNSIGNED NOT NULL,
  `nomeCentro` varchar(128) NOT NULL,
  `enderecoCentro` varchar(256) NOT NULL,
  `capacidade` smallint(4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Entidade principal - Armazena dados dos Centros de Vacinação';

-- --------------------------------------------------------

--
-- Estrutura para tabela `Cidadao`
--

DROP TABLE IF EXISTS `Cidadao`;
CREATE TABLE `Cidadao` (
  `codigoCidadao` int(10) UNSIGNED NOT NULL,
  `nomeCidadao` varchar(128) NOT NULL,
  `dataNascimento` date NOT NULL,
  `genero` varchar(64) NOT NULL,
  `enderecoCidadao` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Entidade principal. Armazena dados dos cidadãos';

-- --------------------------------------------------------

--
-- Estrutura para tabela `DoseReservada`
--

DROP TABLE IF EXISTS `DoseReservada`;
CREATE TABLE `DoseReservada` (
  `DOS_protocoloAgendamento` int(10) UNSIGNED NOT NULL,
  `DOS_codigoCidadao` int(10) UNSIGNED NOT NULL,
  `DOS_dataAgendada` datetime NOT NULL,
  `DOS_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `DOS_numLote` varchar(128) NOT NULL,
  `DOS_codigoCentro` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Entidade de ligação entre as 3 entidades principais. Na inserção uma trigger retira 1 dose da quantidade do empenho.';

--
-- Acionadores `DoseReservada`
--
DROP TRIGGER IF EXISTS `Decrementa_Empenho`;
DELIMITER $$
CREATE TRIGGER `Decrementa_Empenho` AFTER INSERT ON `DoseReservada` FOR EACH ROW UPDATE Empenho SET quantidade=quantidade - 1
where EMP_numLote = NEW.DOS_numLote
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `insereApenasComDataMaior`;
DELIMITER $$
CREATE TRIGGER `insereApenasComDataMaior` BEFORE INSERT ON `DoseReservada` FOR EACH ROW BEGIN
  IF DATEDIFF((SELECT dataCompletaEmpenho FROM Empenho WHERE EMP_numLote = NEW.DOS_numLote),NEW.DOS_dataAgendada) > 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Não há estoque da vacina para esta data';
  END IF; 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Empenho`
--

DROP TABLE IF EXISTS `Empenho`;
CREATE TABLE `Empenho` (
  `EMP_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `EMP_numLote` varchar(128) NOT NULL,
  `EMP_codigoCentro` smallint(5) UNSIGNED NOT NULL,
  `dataCompletaEmpenho` datetime NOT NULL,
  `quantidade` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Armazena lotes entregues aos centros de vacinação';

--
-- Acionadores `Empenho`
--
DROP TRIGGER IF EXISTS `EmpenhaLote`;
DELIMITER $$
CREATE TRIGGER `EmpenhaLote` AFTER INSERT ON `Empenho` FOR EACH ROW UPDATE Estoque SET emEstoque='Empenhado'
where numLote = NEW.EMP_numLote
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Estoque`
--

DROP TABLE IF EXISTS `Estoque`;
CREATE TABLE `Estoque` (
  `EST_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `numLote` varchar(128) NOT NULL,
  `dataFabricacao` date NOT NULL COMMENT 'A ser usado pela aplicação para evitar empenho de lote vencido',
  `emEstoque` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - Empenhado\r\n 1 - Em estoque\r\n2 - Vencido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Armazena os lotes das vacinas';

-- --------------------------------------------------------

--
-- Estrutura para tabela `HistoricoDoCidadao`
--

DROP TABLE IF EXISTS `HistoricoDoCidadao`;
CREATE TABLE `HistoricoDoCidadao` (
  `HDC_protocoloAgendamento` int(10) UNSIGNED NOT NULL,
  `HDC_codigoCidadao` int(10) UNSIGNED NOT NULL,
  `HDC_dataAgendada` datetime NOT NULL,
  `HDC_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `HDC_numLote` varchar(128) NOT NULL,
  `HDC_codigoCentro` smallint(5) UNSIGNED NOT NULL,
  `HDC_numeroDoRegistro` int(10) UNSIGNED NOT NULL,
  `HDC_numeroDeSequencia` smallint(5) UNSIGNED NOT NULL COMMENT 'Valor alterado sequancialmente por trigger.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Armazena as aplicações de vacinas nos cidadãos..';

-- --------------------------------------------------------

--
-- Estrutura para tabela `RegistroDaAplicacao`
--

DROP TABLE IF EXISTS `RegistroDaAplicacao`;
CREATE TABLE `RegistroDaAplicacao` (
  `RDA_protocoloAgendamento` int(10) UNSIGNED NOT NULL,
  `RDA_codigoCidadao` int(10) UNSIGNED NOT NULL,
  `RDA_dataAgendada` datetime NOT NULL,
  `RDA_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `RDA_numLote` varchar(128) NOT NULL,
  `RDA_codigoCentro` smallint(5) UNSIGNED NOT NULL,
  `numeroDoRegistro` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Armazena as aplicações das vacinas previamente agendadas.';

-- --------------------------------------------------------

--
-- Estrutura para tabela `RegrasDeAplicacao`
--

DROP TABLE IF EXISTS `RegrasDeAplicacao`;
CREATE TABLE `RegrasDeAplicacao` (
  `codigoRegra` int(10) UNSIGNED NOT NULL,
  `regra` varchar(128) NOT NULL COMMENT 'Armazena a regra de aplicação',
  `valorPadrao` varchar(16) NOT NULL COMMENT 'Valor padrão a ser utilizado pela aplicação',
  `observacoes` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Armazena regras de aplicação como valores para que estes possam ser compartilhados entre vacinas';

-- --------------------------------------------------------

--
-- Estrutura para tabela `Vacina`
--

DROP TABLE IF EXISTS `Vacina`;
CREATE TABLE `Vacina` (
  `codigoVacina` int(10) UNSIGNED NOT NULL,
  `nome` varchar(128) NOT NULL,
  `fabricante` varchar(128) NOT NULL,
  `prazoValidade` smallint(5) UNSIGNED NOT NULL COMMENT 'Valor em dias para aplicação impedir uso de lotes vencidos',
  `quantidadePorLote` smallint(5) UNSIGNED NOT NULL COMMENT 'Valor necessário para ser inserido na quantidade empenhada',
  `metodoDeAplicacao` varchar(128) NOT NULL,
  `quantidadeDeDoses` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `quantidadePorDose` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Entidade principal. Armazena dados das vacinas';

-- --------------------------------------------------------

--
-- Estrutura para tabela `VacinaTemRegras`
--

DROP TABLE IF EXISTS `VacinaTemRegras`;
CREATE TABLE `VacinaTemRegras` (
  `VTR_codigoVacina` smallint(5) UNSIGNED NOT NULL,
  `VTR_codigoRegra` tinyint(3) UNSIGNED NOT NULL,
  `valor` varchar(32) NOT NULL COMMENT 'Informa o valor auferido para determinada regra',
  `observacoes` varchar(1024) DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1 COMMENT '0 - regra retirada\r\n1 - Regra válida'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Armazena os relacionamentos das vacinas e suas regras de aplicação';

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Agenda`
--
ALTER TABLE `Agenda`
  ADD PRIMARY KEY (`protocolo`,`AGN_codigoCidadao`,`dataAgendada`),
  ADD KEY `KEY_Agenda` (`protocolo`,`AGN_codigoCidadao`,`dataAgendada`),
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
  MODIFY `protocolo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `FK_Primarias-AGN` FOREIGN KEY (`DOS_protocoloAgendamento`,`DOS_codigoCidadao`,`DOS_dataAgendada`) REFERENCES `Agenda` (`protocolo`, `AGN_codigoCidadao`, `dataAgendada`),
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
