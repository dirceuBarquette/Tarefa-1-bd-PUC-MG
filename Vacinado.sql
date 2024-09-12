-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 12/09/2024 às 20:13
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
  `Protocolo` int(10) UNSIGNED NOT NULL,
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

--
-- Despejando dados para a tabela `CentroVacinacao`
--

INSERT INTO `CentroVacinacao` (`CodigoCentro`, `nomeCentro`, `enderecoCentro`, `capacidade`) VALUES
(1, 'Centro1', 'Estrada da Cancela Preta', 200),
(2, 'Centro2', 'Rua Jeronimo Gonçalves', 500),
(3, 'Centro3', 'Rua Jeronimo Gonçalves', 400),
(4, 'Centro4', 'Avenida Jane Maria Martins Figueira', 600),
(5, 'Centro5', 'Estrada Imburo', 600);

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

--
-- Despejando dados para a tabela `Cidadao`
--

INSERT INTO `Cidadao` (`codigoCidadao`, `nomeCidadao`, `cpf`, `dataNascimento`, `genero`, `enderecoCidadao`) VALUES
(1, 'Dirceu', '958761937', '1933-02-16', 'Masculino', 'Avenida dos Jesuítas'),
(2, 'Zequinha', '9601426183', '1933-09-19', 'Masculino', 'Avenida Prefeito Aristeu Ferreira da Silva'),
(3, 'sonia', '4920960142', '1934-08-13', 'Masculino', 'Estrada Santa Mônica'),
(4, 'joao', '4452964126', '1936-05-22', 'Não Declarado', 'Beco do Caneco'),
(5, 'Zédascove', '7432521724', '1939-05-19', 'Masculino', 'Praça dos Pescadores'),
(6, 'Ana', '1481867882', '1949-05-31', 'Feminino', 'Rua Abílio Correa Borges'),
(7, 'Simone', '8544308763', '1951-03-29', 'Feminino', 'Rua Acapulco'),
(8, 'rosana', '9979684846', '1951-04-16', 'Feminino', 'Rua Abreu Lima'),
(9, 'luciana', '3831766568', '1952-02-14', 'Feminino', 'Rua Acadêmico Paulo César Vasconcelos'),
(10, 'camila', '00598175760', '1954-11-29', 'Feminino', 'Alameda das Pitangas'),
(11, 'bruna', '7080296684', '1971-06-03', 'Feminino', 'Estrada da Cancela Preta'),
(12, 'daniela', '4416759232', '1978-09-26', 'Não Binário', 'Estrada Cavaleiros'),
(13, 'haryanne', '8681472718', '1983-02-28', 'Feminino', 'Praça Doralice Freitas dos Santos'),
(14, 'Tamara', '9254820533', '1984-04-23', 'Feminino', 'Estrada Imburo'),
(15, 'eduardo', '4651492698', '1986-03-09', 'Masculino', 'Alameda Casimiro de Abreu'),
(16, 'Abreu', '5583474683', '1986-10-25', 'Masculino', 'Estrada de Cantagalo'),
(17, 'Luciano', '8324323775', '1995-09-09', 'Masculino', 'Rua Santa Catarina'),
(18, 'jean', '2722449382', '2010-07-10', 'Não Binário', 'Rua José Chaves'),
(19, 'Leandro', '5861852995', '2010-08-01', 'Masculino', 'Avenida Jane Maria Martins Figueira'),
(20, 'Isabela', '3117757120', '2014-08-24', 'Feminino', 'Avenida Casuarinas'),
(21, 'Regina', '1054263048', '2016-02-23', 'Feminino', 'Rua Nossa Senhora Aparecida'),
(22, 'Murilo', '2363279446', '2017-12-01', 'Masculino', 'Rua José Chaves'),
(23, 'ARLENE', '9407673673', '2018-02-25', 'Feminino', 'Avenida Jane Maria Martins Figueira'),
(24, 'junet', '4717673673', '2018-07-25', 'Masculino', 'Rua Coronel Castro Guimarães'),
(25, 'Nadia', '8406225613', '1938-03-08', 'Feminino', 'Rua 21 de Abril'),
(26, 'luizbcruz', '7990301686', '2021-11-27', 'Masculino', 'Rua do Pintor'),
(27, 'lcruz', '3774308552', '1982-06-20', 'Masculino', 'Estrada Velha de Rio Dourado'),
(28, 'LUANA', '4503572951', '1993-12-25', 'Feminino', 'Rua Nilio Peçanha'),
(29, 'BATISTA', '2974865542', '1940-10-15', 'Masculino', 'Rua Otávio Moreira'),
(30, 'PEREIRA', '7257445545', '2005-02-21', 'Masculino', 'Rua Jeronimo Gonçalves'),
(31, 'Abrao', '4695521255', '2016-10-17', 'Masculino', 'Rua Luiz Rocha'),
(32, 'marislaine', '4179154978', '2023-10-17', 'Feminino', 'Rua Dinorah Mendonça'),
(33, 'Girard', '1365542564', '2023-08-21', 'Masculino', 'Rua Dourado'),
(34, 'mabel', '8872825849', '2020-05-22', 'Feminino', 'Rua Serafim Teixeira Bastos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `DoseReservada`
--

CREATE TABLE `DoseReservada` (
  `DOS_protocoloAgendamento` int(10) UNSIGNED NOT NULL,
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
  `EMP_numLote` varchar(128) NOT NULL,
  `EMP_codigoCentro` smallint(5) UNSIGNED NOT NULL,
  `dataCompletaEmpenho` datetime NOT NULL,
  `Quantidade` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `Empenho`
--

INSERT INTO `Empenho` (`EMP_codigoVacina`, `EMP_numLote`, `EMP_codigoCentro`, `dataCompletaEmpenho`, `Quantidade`) VALUES
(5, 'AB12345', 3, '2024-02-11 00:00:00', 1000),
(6, 'CD6789', 1, '2024-02-11 00:00:00', 1000),
(7, 'DE5804', 4, '2024-02-11 00:00:00', 1000);

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

--
-- Despejando dados para a tabela `Estoque`
--

INSERT INTO `Estoque` (`EST_codigoVacina`, `numLote`, `dataFabricacao`, `fimValidadeEmDias`) VALUES
(5, 'AB12345', '2024-01-05', 90),
(6, 'CD6789', '2024-01-05', 90),
(7, 'DE5804', '2024-01-05', 80);

-- --------------------------------------------------------

--
-- Estrutura para tabela `HistoricoDoCidadao`
--

CREATE TABLE `HistoricoDoCidadao` (
  `HDC_protocoloAgendamento` int(10) UNSIGNED NOT NULL,
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
  `RDA_protocoloAgendamento` int(10) UNSIGNED NOT NULL,
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
  `valorPadrao` varchar(16) NOT NULL,
  `observacoes` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `RegrasDeAplicacao`
--

INSERT INTO `RegrasDeAplicacao` (`codigoRegra`, `regra`, `valorPadrao`, `observacoes`) VALUES
(1, 'Intervalo Entre Doses Mínimo - Mesma Vacina', '0', NULL),
(2, 'Intervalo Entre Doses Máximo - Mesma Vacina', '0', NULL),
(3, 'Intervalo Entre Doses Mínimo - Outra Vacina', '0', NULL),
(4, 'intervalo Entre Doses Máximo - Outra Vacina', '0', ''),
(5, 'Quantidade Entre Doses Mínimo - Mesma Vacina', '0', ''),
(6, 'Quantidade Entre Doses Máximo - Mesma Vacina', '0', ''),
(7, 'Quantidade Entre Doses Mínimo - Outra Vacina', '0', ''),
(8, 'Quantidade Entre Doses Máximo - Outra Vacina', '0', '');

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

--
-- Despejando dados para a tabela `Vacina`
--

INSERT INTO `Vacina` (`codigoVacina`, `nome`, `fabricante`, `prazoValidade`, `quantidadePorLote`, `metodoDeAplicacao`, `quantidadeDeDoses`, `quantidadePorDose`) VALUES
(1, 'Febre Amarela', 'Farm1', 90, 1000, 'intra muscular', 1, '1ml'),
(2, 'BCG', 'Farm2', 60, 1000, 'Língua', 2, '0,1ml'),
(3, 'Tríplice', 'Farm2', 60, 1000, 'intra muscular', 2, '0,1ml'),
(4, 'Anti Tetânica', 'Farm1', 60, 1000, 'intra muscular', 1, '0,1ml'),
(5, 'COVID', 'Astra', 100, 1000, 'intra muscular', 2, '1ml'),
(6, 'COVID', 'Pfizer', 100, 1000, 'intra muscular', 1, '1ml'),
(7, 'CORONAVAC', 'Biotec', 90, 1000, 'intra muscular', 2, '1ml'),
(8, 'Rotavírus', 'Farm1', 60, 1000, 'intra muscular', 1, '0,1ml'),
(9, 'Catapora', 'Farm3', 180, 1000, 'intra muscular', 2, '0,1ml'),
(10, 'Sarampo', 'Farm4', 60, 1000, 'gotas', 1, '0,1ml');

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
-- Despejando dados para a tabela `VacinaTemRegras`
--

INSERT INTO `VacinaTemRegras` (`VTR_codigoVacina`, `VTR_codigoRegra`, `valor`, `observacoes`, `status`) VALUES
(7, 1, '60', NULL, 1),
(7, 2, '90', NULL, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Agenda`
--
ALTER TABLE `Agenda`
  ADD PRIMARY KEY (`Protocolo`,`AGN_codigoCidadao`,`dataAgendamento`),
  ADD KEY `KEY_Agenda` (`Protocolo`,`AGN_codigoCidadao`,`dataAgendamento`),
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
  ADD PRIMARY KEY (`DOS_protocoloAgendamento`,`DOS_codigoCidadao`,`DOS_dataAgendamento`,`DOS_codigoVacina`,`DOS_numLote`,`DOS_codigoCentro`),
  ADD KEY `DOS_Primarias-AGN` (`DOS_protocoloAgendamento`,`DOS_codigoCidadao`,`DOS_dataAgendamento`),
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
  ADD PRIMARY KEY (`HDC_protocoloAgendamento`,`HDC_codigoCidadao`,`HDC_dataAgendamento`,`HDC_codigoVacina`,`HDC_numLote`,`HDC_codigoCentro`,`HDC_numeroDoRegistro`,`HDC_numeroDeSequencia`),
  ADD KEY `HDC_Primarias-AGN-RDA` (`HDC_protocoloAgendamento`,`HDC_codigoCidadao`,`HDC_dataAgendamento`),
  ADD KEY `HDC_Primarias-EMP-RDA` (`HDC_codigoVacina`,`HDC_numLote`,`HDC_codigoCentro`),
  ADD KEY `HDC_numeroDoRegistro` (`HDC_numeroDoRegistro`);

--
-- Índices de tabela `RegistroDaAplicacao`
--
ALTER TABLE `RegistroDaAplicacao`
  ADD PRIMARY KEY (`numeroDoRegistro`,`RDA_codigoCentro`,`RDA_numLote`,`RDA_codigoVacina`,`RDA_dataAgendamento`,`RDA_codigoCidadao`,`RDA_protocoloAgendamento`),
  ADD KEY `RDA_Primarias-AGN` (`RDA_protocoloAgendamento`,`RDA_codigoCidadao`,`RDA_dataAgendamento`),
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
  MODIFY `CodigoCentro` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `Cidadao`
--
ALTER TABLE `Cidadao`
  MODIFY `codigoCidadao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `RegistroDaAplicacao`
--
ALTER TABLE `RegistroDaAplicacao`
  MODIFY `numeroDoRegistro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `FK_Primarias-AGN` FOREIGN KEY (`DOS_protocoloAgendamento`,`DOS_codigoCidadao`,`DOS_dataAgendamento`) REFERENCES `Agenda` (`Protocolo`, `AGN_codigoCidadao`, `dataAgendamento`),
  ADD CONSTRAINT `FK_Primarias-EMP` FOREIGN KEY (`DOS_codigoVacina`,`DOS_numLote`) REFERENCES `Empenho` (`EMP_codigoVacina`, `EMP_numLote`);

--
-- Restrições para tabelas `Empenho`
--
ALTER TABLE `Empenho`
  ADD CONSTRAINT `FK_CodCentro` FOREIGN KEY (`EMP_codigoCentro`) REFERENCES `CentroVacinacao` (`CodigoCentro`),
  ADD CONSTRAINT `FK_Primarias-EST` FOREIGN KEY (`EMP_codigoVacina`,`EMP_numLote`) REFERENCES `Estoque` (`EST_codigoVacina`, `numLote`);

--
-- Restrições para tabelas `Estoque`
--
ALTER TABLE `Estoque`
  ADD CONSTRAINT `FK_CodVac` FOREIGN KEY (`EST_codigoVacina`) REFERENCES `Vacina` (`codigoVacina`);

--
-- Restrições para tabelas `HistoricoDoCidadao`
--
ALTER TABLE `HistoricoDoCidadao`
  ADD CONSTRAINT `FK_Primarias-AGN-RDA-HDC` FOREIGN KEY (`HDC_protocoloAgendamento`,`HDC_codigoCidadao`,`HDC_dataAgendamento`) REFERENCES `RegistroDaAplicacao` (`RDA_protocoloAgendamento`, `RDA_codigoCidadao`, `RDA_dataAgendamento`),
  ADD CONSTRAINT `FK_Primarias-EMP-RDA-HDC` FOREIGN KEY (`HDC_codigoVacina`,`HDC_numLote`,`HDC_codigoCentro`) REFERENCES `RegistroDaAplicacao` (`RDA_codigoVacina`, `RDA_numLote`, `RDA_codigoCentro`);

--
-- Restrições para tabelas `RegistroDaAplicacao`
--
ALTER TABLE `RegistroDaAplicacao`
  ADD CONSTRAINT `FK_Primarias-AGN-RDA` FOREIGN KEY (`RDA_protocoloAgendamento`,`RDA_codigoCidadao`,`RDA_dataAgendamento`) REFERENCES `RegistroDaAplicacao` (`RDA_protocoloAgendamento`, `RDA_codigoCidadao`, `RDA_dataAgendamento`),
  ADD CONSTRAINT `FK_Primarias-EMP-RDA` FOREIGN KEY (`RDA_codigoVacina`,`RDA_numLote`,`RDA_codigoCentro`) REFERENCES `RegistroDaAplicacao` (`RDA_codigoVacina`, `RDA_numLote`, `RDA_codigoCentro`);

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
