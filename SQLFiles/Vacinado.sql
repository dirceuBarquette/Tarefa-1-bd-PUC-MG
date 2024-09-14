-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 13/09/2024 às 17:54
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

--
-- Despejando dados para a tabela `Agenda`
--

INSERT INTO `Agenda` (`Protocolo`, `AGN_codigoCidadao`, `dataAgendamento`) VALUES
(29, 1026, '2022-12-01 00:00:00'),
(30, 1027, '2023-02-01 00:00:00'),
(31, 1030, '2023-11-19 00:00:00'),
(32, 1031, '2022-09-11 00:00:00'),
(1, 1032, '2023-03-25 12:09:00'),
(8, 1032, '2023-05-25 09:00:00'),
(15, 1032, '2023-07-25 09:00:00'),
(22, 1032, '2024-04-25 09:00:00'),
(33, 1033, '2023-11-10 00:00:00'),
(34, 1035, '2022-07-02 00:00:00'),
(35, 1036, '2023-10-09 00:00:00'),
(36, 1037, '2022-03-04 00:00:00'),
(37, 1038, '2023-06-20 00:00:00'),
(38, 1039, '2022-12-07 00:00:00'),
(2, 1041, '2023-04-04 12:09:00'),
(9, 1041, '2023-06-04 09:00:00'),
(16, 1041, '2023-08-04 09:00:00'),
(23, 1041, '2024-11-04 09:00:00'),
(39, 1044, '2022-09-10 00:00:00'),
(40, 1049, '2022-08-08 00:00:00'),
(41, 1050, '2022-09-17 00:00:00'),
(42, 1054, '2023-01-12 00:00:00'),
(43, 1057, '2023-10-10 00:00:00'),
(44, 1058, '2024-02-12 00:00:00'),
(45, 1061, '2023-01-10 00:00:00'),
(46, 1063, '2024-02-25 00:00:00'),
(3, 1066, '2023-04-14 09:00:00'),
(10, 1066, '2023-06-14 09:00:00'),
(17, 1066, '2023-08-14 09:00:00'),
(24, 1066, '2024-11-14 09:00:00'),
(47, 1070, '2024-04-27 00:00:00'),
(48, 1071, '2024-03-02 00:00:00'),
(49, 1075, '2023-12-31 00:00:00'),
(50, 1076, '2024-01-31 00:00:00'),
(51, 1077, '2022-09-12 00:00:00'),
(52, 1078, '2023-07-20 00:00:00'),
(53, 1079, '2022-07-11 00:00:00'),
(54, 1081, '2022-12-19 00:00:00'),
(55, 1083, '2023-01-14 00:00:00'),
(56, 1084, '2023-06-17 00:00:00'),
(4, 1085, '2023-04-24 09:00:00'),
(11, 1085, '2023-06-24 09:00:00'),
(18, 1085, '2023-08-24 09:00:00'),
(25, 1085, '2024-11-24 09:00:00'),
(5, 1086, '2023-05-05 09:00:00'),
(12, 1086, '2023-07-05 09:00:00'),
(19, 1086, '2023-09-05 09:00:00'),
(26, 1086, '2024-12-05 09:00:00'),
(57, 1087, '2022-05-05 00:00:00'),
(58, 1088, '2022-10-12 00:00:00'),
(59, 1089, '2023-12-10 00:00:00'),
(60, 1091, '2022-05-24 00:00:00'),
(61, 1092, '2023-07-20 00:00:00'),
(62, 1095, '2022-07-29 00:00:00'),
(63, 1096, '2024-02-20 00:00:00'),
(64, 1097, '2023-12-14 00:00:00'),
(65, 1099, '2023-11-19 00:00:00'),
(66, 1102, '2023-07-03 00:00:00'),
(67, 1103, '2023-07-28 00:00:00'),
(68, 1104, '2023-12-02 00:00:00'),
(69, 1105, '2023-11-16 00:00:00'),
(6, 1106, '2023-04-27 09:00:00'),
(13, 1106, '2023-06-27 09:00:00'),
(20, 1106, '2023-08-27 09:00:00'),
(27, 1106, '2024-11-27 09:00:00'),
(70, 1109, '2024-04-14 00:00:00'),
(71, 1110, '2023-01-08 00:00:00'),
(72, 1113, '2022-07-26 00:00:00'),
(73, 1114, '2023-02-27 00:00:00'),
(74, 1115, '2024-04-26 00:00:00'),
(75, 1116, '2022-09-22 00:00:00'),
(76, 1118, '2022-03-10 00:00:00'),
(7, 1119, '2023-04-23 09:00:00'),
(14, 1119, '2023-06-23 09:00:00'),
(21, 1119, '2023-08-23 09:00:00'),
(28, 1119, '2024-11-23 09:00:00'),
(77, 1120, '2023-02-06 00:00:00'),
(78, 1121, '2023-09-22 00:00:00'),
(79, 1122, '2024-01-07 00:00:00'),
(80, 1123, '2022-09-01 00:00:00'),
(81, 1126, '2023-02-05 00:00:00'),
(82, 1127, '2024-01-16 00:00:00'),
(83, 1128, '2022-04-26 00:00:00'),
(84, 1129, '2022-10-27 00:00:00'),
(85, 1132, '2022-09-21 00:00:00'),
(86, 1133, '2024-03-21 00:00:00'),
(87, 1134, '2023-02-26 00:00:00'),
(88, 1136, '2022-09-07 00:00:00'),
(89, 1139, '2022-12-19 00:00:00'),
(90, 1141, '2022-12-17 00:00:00'),
(91, 1142, '2022-07-27 00:00:00'),
(92, 1143, '2022-11-25 00:00:00');

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
  `dataNascimento` date NOT NULL,
  `genero` varchar(64) NOT NULL,
  `enderecoCidadao` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `Cidadao`
--

INSERT INTO `Cidadao` (`codigoCidadao`, `nomeCidadao`, `dataNascimento`, `genero`, `enderecoCidadao`) VALUES
(1, 'PATRICK', '1964-05-02', 'Masculino', 'R. MARIA F B REID'),
(2, 'LUIZ', '1959-09-09', 'Masculino', 'R B DE JAGUARIPE'),
(3, 'JOSE', '1953-06-28', 'Masculino', 'RUA DR. AVILA '),
(4, 'RICARDO', '1979-03-30', 'Masculino', 'AV.L. KING'),
(5, 'JOSE', '1951-01-27', 'Masculino', 'R D L GUIMARAES'),
(6, 'CARLOS', '1945-01-08', 'Masculino', 'AV E. PESSOA'),
(7, 'MONICA', '1967-09-19', 'Masculino', 'R. H. MENINI'),
(8, 'RENATO', '1982-09-02', 'Masculino', 'R BR. JAGUARIPE'),
(9, 'ALEXSANDER', '1975-10-04', 'Masculino', 'R.J.DA SILVEIRA'),
(10, 'IGOR', '1981-07-14', 'Masculino', 'COND.JD.CAMBOATA'),
(11, 'ANTONIO', '1945-04-16', 'Masculino', 'EST.UNIAO INDUSTRIA'),
(12, 'FRANCISCO', '1946-03-13', 'Masculino', 'R.AGROLANDIA'),
(13, 'WALTER', '1948-11-10', 'Masculino', 'R.P. DE MORAIS'),
(14, 'SERGIO', '1934-12-18', 'Feminino', 'AV. R. BARBOSA'),
(15, 'ROSALIA', '1940-04-19', 'Feminino', 'AV.RUI BARBOSA'),
(16, 'CRISTIANO', '1944-03-18', 'Masculino', 'R.RODOLFO ALBINO'),
(17, 'REGINA', '1947-07-29', 'Feminino', 'R.RODOLFO ALBINO'),
(18, 'LEONARDO', '1961-01-07', 'Masculino', 'R. MQ. DE SAO  VICENTE'),
(19, 'PAULO', '1949-10-14', 'Masculino', 'R. J. HIGINO'),
(20, 'MARCOS', '1954-11-12', 'Masculino', 'R.H.CAVALLEIRO'),
(21, 'ROSALY', '1943-08-27', 'Feminino', 'AV.V.DE ALBUQUERQUE'),
(22, 'IVO', '1939-11-16', 'Feminino', 'R. GEN.V.FLORES'),
(23, 'EUNICE', '1953-10-04', 'Feminino', 'R.BR.DA TORRE'),
(24, 'JOSE', '1956-02-04', 'Masculino', 'AV. A. FERREIRA'),
(25, 'VANIA', '1961-12-01', 'Feminino', 'AV. VIEIRA SOUTO'),
(26, 'ANA', '1977-03-27', 'Masculino', 'PR. DE BOTAFOGO'),
(27, 'CESAR', '1949-12-10', 'Masculino', 'AV.VIEIRA SOUTO'),
(28, 'FERNANDO', '1962-09-17', 'Masculino', 'R.SOARES CABRAL'),
(29, 'EDUARDO', '1974-10-05', 'Masculino', 'PR.DE BOTAFOGO'),
(30, 'ELIANE', '1962-09-08', 'Feminino', 'R.LEITE LEAL'),
(31, 'CARLOS', '1954-04-16', 'Masculino', 'R.CNSO.LAFAIETE'),
(32, 'ELIANE', '1962-09-08', 'Feminino', 'R.LEITE LEAL'),
(33, 'VANIA', '1961-12-01', 'Feminino', 'AV. VIEIRA SOUTO'),
(34, 'ANTONIO', '1966-03-08', 'Masculino', 'R. A. STOCKLER'),
(35, 'MARIA', '1970-12-22', 'Feminino', 'R. A. STOCKLER'),
(36, 'LAURA', '1981-08-30', 'Feminino', 'AV.ALM.A. ALBERTO'),
(37, 'GISELE', '1980-06-03', 'Feminino', 'ENG.O.WENCHENK'),
(38, 'EDESIO', '1973-09-29', 'Masculino', 'R. ENG.WENSCHEN'),
(39, 'AMARILIO', '1946-10-17', 'Masculino', 'R. BR. DE O. CASTRO'),
(40, 'SILVEIRA', '1965-10-11', 'Feminino', 'R. BR. DE O. CASTRO'),
(41, 'RODRYGO', '1971-10-29', 'Masculino', 'R.JOSE LINHARES'),
(42, 'LUIZ', '1944-10-13', 'Masculino', 'AV.N.S.COPACABANA'),
(43, 'ALEXANDRE', '1976-04-13', 'Masculino', 'R. DA MARINA'),
(44, 'ZELIA', '1941-01-29', 'Feminino', 'AV.N.S.COPACABANA'),
(45, 'ANTONIO', '1937-11-01', 'Masculino', 'R.DOM E. GOMES'),
(46, 'AMARILIO', '1946-10-17', 'Feminino', 'R. BR. DE O. CASTRO'),
(47, 'JOAO', '1974-05-19', 'Masculino', 'AV. L.COSTA'),
(48, 'VANESSA', '1976-07-21', 'Feminino', 'R. JOSE SILVA'),
(49, 'CARLOS', '1963-09-20', 'Masculino', 'R.VISC. DE CAIRU'),
(50, 'MONICA', '1972-04-20', 'Feminino', 'AV. G. DE CARVALHO'),
(51, 'NILDA', '1958-07-12', 'Feminino', 'AV.S.SEBASTIAO'),
(52, 'FABIO', '1979-10-26', 'Masculino', 'AV.MANTIQUEIRA'),
(53, 'REGINALDO', '1969-08-11', 'Masculino', 'R. RIO G. DO SUL'),
(54, 'CLAUDIO', '1958-12-25', 'Masculino', 'R. PROF. A. LOBO'),
(55, 'RICARDO', '1961-04-29', 'Masculino', 'AV.SERNAMBETIBA'),
(56, 'VANIA', '1959-08-13', 'Feminino', 'R .H. DE CAMPOS'),
(57, 'JOSE', '1955-03-31', 'Masculino', 'TV .MANOEL P. LEITE-35'),
(58, 'VALERIA', '1962-01-08', 'Feminino', 'R. PROF. A. LOBO'),
(59, 'DENISE', '1981-11-27', 'Feminino', 'R.CARLOS WEBER 1418-AP-192'),
(60, 'ROBSON', '1983-08-04', 'Masculino', 'R.VIC.A.OLIVEIRA-677'),
(61, 'MARCIO', '1948-10-06', 'Masculino', 'R. F. OTAVIANO'),
(62, 'IVAN', '1954-10-11', 'Masculino', 'AV.H.DODSWORTH'),
(63, 'RICARDO', '1977-10-06', 'Masculino', 'R. EMILIO LANG  JR-87'),
(64, 'PEDRO', '1970-03-30', 'Masculino', 'R.JOAO LIRA'),
(65, 'SYLVIA', '1969-09-01', 'Feminino', 'R.JOAO LIRA'),
(66, 'RAFAEL', '1977-07-18', 'Masculino', 'R.MARIA E.A.DICK'),
(67, 'AMALIA', '1974-02-28', 'Feminino', 'R.MARIA E.A.DICK'),
(68, 'REGINALDO', '1957-04-17', 'Masculino', 'AV. COTOVIA-274-134'),
(69, 'ROGERIO', '1948-06-12', 'Masculino', 'AV.B. DE MEDEIROS'),
(70, 'ANDREIA', '1973-07-23', 'Feminino', 'R.GAL.SEVERIANO'),
(71, 'OSMAR', '1959-04-03', 'Masculino', 'R.WENCESLAU BRAZ-44-AP-171'),
(72, 'ALEXANDRE', '1971-01-23', 'Masculino', 'R.ESPUMAS'),
(73, 'ANDREIA', '1973-07-23', 'Feminino', 'R. GEN. SEVERIANO'),
(74, 'ROZADO', '1976-10-25', 'Masculino', 'R. PE.CARVALHO-380-AP-32'),
(75, 'CARLOS', '1956-08-31', 'Masculino', 'R.DAS ACACIAS'),
(76, 'RAIMUNDO', '1977-08-16', 'Masculino', 'R.N.HORIZONTE'),
(77, 'ANA', '1981-08-09', 'Feminino', 'R.M. AMALIA'),
(78, 'FERNANDO', '1964-12-04', 'Masculino', 'R.GABRIEL STOS-600-AP-121'),
(79, 'HELDER', '1973-05-25', 'Masculino', 'R.RUI BARBOSA-664'),
(80, 'ANTONIO', '1952-08-02', 'Masculino', 'R.OLAVO BILAC-242-BL-B-AP-51'),
(81, 'EZEQUIEL', '1980-04-17', 'Masculino', 'R.ANESIO M. SIQUEIRA-53-'),
(82, 'CAIO', '1983-02-07', 'Masculino', 'R.TURMALINA-36-'),
(83, 'WILSON', '1957-03-06', 'Masculino', 'R.ANTONIO CEZARINO-591-AP-92'),
(84, 'MARIA', '1941-01-22', 'Feminino', 'AV.PAULISTA'),
(85, 'CLAUDIO', '1945-01-19', 'Masculino', 'VISC.S. FONTES'),
(86, 'ALEXANDRE', '1971-06-13', 'Masculino', 'R.INDIANA'),
(87, 'VANDA', '1955-03-10', 'Feminino', 'AL.JAU'),
(88, 'FLAVIO', '1953-01-19', 'Masculino', 'R.J.R.MARINHO'),
(89, 'ALESSANDRO', '1979-09-23', 'Masculino', 'R.ABILIO SOARES'),
(90, 'JOSE', '1943-03-10', 'Masculino', 'R.ABILIO SOARES'),
(91, 'CLAUDIO', '1944-06-27', 'Masculino', 'R.ILHEUS'),
(92, 'JOSE', '1952-04-03', 'Masculino', 'R.BR.CAPANEMA DE 281-SP'),
(93, 'JOSE', '1963-02-14', 'Masculino', 'R.MARIA VIDAL'),
(94, 'LUIZ', '1975-06-27', 'Masculino', 'R.DINIEPER-59-AP-31'),
(95, 'EVERTON', '1981-08-03', 'Masculino', 'R.SILVIO ROMERO'),
(96, 'PAULO', '1964-12-19', 'Masculino', 'CINCO TTE VILLAGE'),
(97, 'EDISON', '1961-05-21', 'Masculino', 'R.BANDEIRANTES'),
(98, 'MIRIAM', '1949-05-27', 'Feminino', 'R.MARIO WHATELY'),
(99, 'WAGNER', '1948-01-27', 'Masculino', 'R.MARIO WHATELY'),
(100, 'CELESTINO', '1955-05-08', 'Masculino', 'AV.DQ.DE CAXIAS'),
(101, 'MARIA', '1953-09-24', 'Feminino', 'R.DR.D.FRANCESCHI-2059'),
(102, 'CLAUDIO', '1962-12-06', 'Masculino', 'AL.NETUNO'),
(103, 'RAQUEL', '1979-12-20', 'Feminino', 'R.CHAFIC MALUF'),
(104, 'MARCELO', '1972-11-09', 'Masculino', 'UNIVERSO'),
(105, 'LUCIENE', '1971-05-01', 'Feminino', 'R.DAS NHANDIROBAS'),
(106, 'BE', '1974-04-03', 'Masculino', 'R.PE. Joao MANUEL'),
(107, 'ARTHUR', '1974-04-03', 'Masculino', 'R.PE JOAO MANUEL'),
(108, 'ANTONIO', '1958-01-19', 'Masculino', 'R. H. DE OLIVEIRA'),
(109, 'MARCELO', '1972-11-09', 'Masculino', 'UNIVERSO'),
(110, 'FERNANDO', '1949-11-10', 'Masculino', 'R. M.  BARRETO'),
(111, 'EDUARDO', '1966-08-19', 'Masculino', 'R.EUCLIDES DA CUNHA'),
(112, 'ANTONIO', '1948-08-25', 'Feminino', 'R.T. DA COSTA.120/702'),
(113, 'MARCOS', '1956-03-25', 'Masculino', 'R.PROF. ARTUR RAMOS-213-61-SP'),
(114, 'DENNIS', '1968-03-19', 'Masculino', 'R.ARMAZEM-27-GUARULHOS-SP'),
(115, 'FRANCISCO', '1982-12-04', 'Masculino', 'AV.RAUL FURQUIM'),
(116, 'PAULO', '1930-12-13', 'Masculino', 'R.CAP.FELISBINO DE MORAIS'),
(117, 'MARIA', '1936-10-11', 'Feminino', 'R.CAP.FELISBINO DE MORAIS'),
(118, 'BERNARDO', '1957-10-19', 'Masculino', 'R.INGLES DE SOUSA'),
(119, 'EVANGELINA', '1962-12-06', 'Feminino', 'R. INGLES DE SOUZA'),
(120, 'LUCIANO', '1934-09-05', 'Masculino', 'R.CAMPOS BICUDO'),
(121, 'ARLETE', '1952-08-18', 'Feminino', 'R.GUIARA'),
(122, 'IO', '1945-05-16', 'Masculino', 'AV.HIGIENOPOLIS'),
(123, 'FRANCISCO', '1967-03-26', 'Masculino', 'R.MIGUEL FRIAS'),
(124, 'TANIA', '1952-12-31', 'Feminino', 'R.GUSTAVO SAMPAIO'),
(125, 'PEDRO', '1960-01-01', 'Masculino', 'R.N.RODRIGUES'),
(126, 'ANGELO', '1948-05-16', 'Masculino', 'AV.ODILA'),
(127, 'ROGERIO', '1977-03-17', 'Masculino', 'R.CASTRO TEIXEIRA'),
(128, 'MAISA', '1982-08-12', 'Feminino', 'R.DONA MATILDE'),
(129, 'CRISTAL', '1985-01-16', 'Feminino', 'R.ITUVERAVA'),
(130, 'MARIA', '1973-04-14', 'Feminino', 'R.LOURENCO DE ALMEIDA'),
(131, 'ANTONIO', '1951-07-10', 'Masculino', 'R.CACONDE'),
(132, 'GIULIANO', '1972-11-12', 'Masculino', 'R.COUTO MAGALHAES'),
(133, 'LUCIANO', '1976-02-01', 'Masculino', 'R.VOLUNTARIOS PATRIA'),
(134, 'GABRIELA', '1986-02-02', 'Feminino', 'EST.CAMBOATA'),
(135, 'MANOEL', '1938-10-01', 'Masculino', 'R.DR.TOMAZ CARVALHAL'),
(136, 'LEONARDO', '1980-06-01', 'Masculino', 'R.DANTE MILLARCH'),
(137, 'JOAO', '1973-11-16', 'Masculino', 'R.SAMPAIO VIDAL'),
(138, 'NORBERTO', '1968-10-28', 'Feminino', 'R.IRAMAIA'),
(139, 'LUIZ', '1941-07-11', 'Masculino', 'R.RIO GRANDE DOSUL'),
(140, 'JULIANA', '1981-08-12', 'Feminino', 'R.RENATO RINALDI'),
(141, 'LUIZ', '1941-07-11', 'Masculino', 'R.RIO GRANDE DO SUL'),
(142, 'ELEN', '1971-04-15', 'Feminino', 'R. P. DE ALMEIDA'),
(143, 'AYRTON', '1926-11-02', 'Masculino', 'AL.JOAQUIM E.LIMA-928-AP-81-SP'),
(144, 'LEONARDO', '1974-09-09', 'Masculino', 'R . SACOPA'),
(145, 'KLEBER', '1960-06-05', 'Masculino', 'AL.ARLEQUIM-753-ITU-SP'),
(146, '\\DANIELLE', '1983-01-16', 'Feminino', 'R ABC'),
(147, 'DENILSON', '1978-09-09', 'Feminino', 'R.PAIM'),
(148, 'FABIO', '1972-05-04', 'Masculino', 'AV.PE.ANTONIO J.SANTOS'),
(149, 'LEYLAH', '1974-03-30', 'Feminino', 'R.BR.REGO BARROS'),
(150, 'ANNUNZIATO', '1932-01-02', 'Masculino', 'AV.JOSE FORNARI'),
(151, 'ROBERTO', '1970-02-19', 'Masculino', 'R.STA JUSTINA'),
(152, 'JUPIACYR', '1952-10-17', 'Masculino', 'AV.PIASSANGUABA'),
(153, 'DANIELLE', '1983-01-16', 'Feminino', 'R.MARFIM'),
(154, 'MARCIO', '1968-02-26', 'Feminino', 'BRO DO RODEIO -'),
(155, 'JOSE', '1958-02-17', 'Masculino', 'AV.SERNAMBETIBA'),
(156, 'EDUARDO', '1973-08-20', 'Masculino', 'R.TIRADENTES'),
(157, 'CLARISSE', '1952-06-23', 'Feminino', 'R.PEIXOTO GOMIDE'),
(158, 'FERNANDO', '1931-10-21', 'Masculino', 'R .A. ESPINOLA'),
(159, 'CARLOS', '1957-08-04', 'Masculino', 'R.MOURA RIBEIRO'),
(160, 'FRANCISCA', '1981-09-21', 'Feminino', 'R.ANGATURAMA'),
(161, 'FERNANDO', '1949-07-29', 'Masculino', 'R.GEN.P.DA SILVA'),
(162, 'FRANCISCA', '1981-09-21', 'Feminino', 'R.ANGATURAMA'),
(163, 'ANTONIO', '1949-04-18', 'Masculino', 'AL.JOAQUIM E.LIMA'),
(164, 'CLARISSE', '1962-10-05', 'Feminino', 'AV.L. A. DE ARAUJO'),
(165, 'MOACYR', '1963-05-08', 'Masculino', 'AV.L. A. DE ARAUJO'),
(166, 'JORGE', '1968-03-20', 'Masculino', 'R.HILDA AMARAL CUSSIOL'),
(167, 'DANIEL', '1972-10-16', 'Masculino', 'R.JAQUEIRA'),
(168, 'RAQUEL', '1968-10-11', 'Feminino', 'R.ALVARO BOSCO'),
(169, 'ERALDO', '1955-11-14', 'Masculino', 'AV.HIGIENOPOLIS'),
(170, 'RICARDO', '1963-12-24', 'Masculino', 'R.VERDES MATAS'),
(171, 'JOSE', '1955-07-16', 'Masculino', 'R.EMBIRUCU'),
(172, 'ROBERTO', '1956-06-14', 'Masculino', 'R.CORCOVADO'),
(173, 'ANTONIO', '1966-04-19', 'Masculino', 'R.JOSE TEODORO DE LIMA'),
(174, 'MARIA', '1949-05-08', 'Feminino', 'AL. IRERE'),
(175, 'FERNANDA', '1973-10-27', 'Feminino', 'A. SERNAMBETIBA'),
(176, 'MARCO', '1946-09-04', 'Masculino', 'AV. L COSTA'),
(177, 'JOSE', '1942-05-24', 'Masculino', 'P.M.VICTOR N.LEAL'),
(178, 'TO', '1980-09-26', 'Masculino', 'AL. IRERE'),
(179, 'FERNANDA', '1933-05-14', 'Feminino', 'R .A.VASCONCELOS'),
(180, 'RENATO', '1980-09-26', 'Masculino', 'AL.IRERE-23'),
(181, 'ANTONIO', '1945-07-22', 'Masculino', 'R.L. QUINTAS'),
(182, 'WALTER', '1953-04-30', 'Masculino', 'R.CAMPEVAS'),
(183, 'JOSE', '1941-07-03', 'Masculino', 'R. ACAU'),
(184, 'NELSON', '1941-08-26', 'Masculino', 'R. ABRAAO M. DO CARMO'),
(185, 'SONIA', '1970-10-10', 'Feminino', 'R.ARACATUBA'),
(186, 'JOAO', '1968-01-16', 'Masculino', 'R. ARACATUBA'),
(187, 'PAOLA', '1986-03-17', 'Feminino', 'DR.MARTINS FERREIRA'),
(188, 'MARCIA', '1972-10-01', 'Feminino', 'R.DOM TITO MARCHESE'),
(189, 'ANTONIO', '1957-06-11', 'Masculino', 'R.PROF.ALEXANDRE CORREIA'),
(190, 'JULIANE', '1982-12-18', 'Feminino', 'R.GAROPA'),
(191, 'RAFAEL', '1984-07-26', 'Masculino', 'R. ANTONIO J. DO AMARAL'),
(192, 'SOLANGE', '1962-08-27', 'Feminino', 'AV.JACUTINGA'),
(193, 'JOSE', '1956-04-13', 'Masculino', 'AV.G.SENGES'),
(194, 'LEILA', '1982-02-19', 'Feminino', 'R.CHILE'),
(195, 'JOAO', '1959-05-03', 'Masculino', 'A. B. DE MEDEIROS'),
(196, 'PAULO', '1964-12-07', 'Feminino', 'R H 27 E - 106 CASA'),
(197, 'CLOVIS', '1932-12-29', 'Masculino', 'AV.B.DE MEDEIROS'),
(198, 'SIMONE', '1968-12-17', 'Feminino', 'R. H 27 E -106 CASA'),
(199, 'SUELI', '1958-04-15', 'Feminino', 'R.CACONDE'),
(200, 'NELCY', '1957-06-27', 'Feminino', 'R.RAPOSO'),
(201, 'ALTAIR', '1966-02-01', 'Masculino', 'R.MARIA COPEINSKI'),
(202, 'MARIA', '1945-01-30', 'Feminino', 'R.GUARARAPES'),
(203, 'ROBERTO', '1954-03-22', 'Masculino', 'RUA PAISSANDU'),
(204, 'JOAO', '1974-05-20', 'Masculino', 'AV. PRSA DOESTE'),
(205, 'ALTAIR', '1966-02-01', 'Masculino', 'R.MARIA COPEINSKI'),
(206, 'ELISABETH', '1947-12-15', 'Feminino', 'AL.BELGRADO'),
(207, 'MARINA', '1951-01-01', 'Feminino', 'R.ANTONIO JOSE SILVA'),
(208, 'MAURICIO', '1965-04-28', 'Masculino', 'R.PR.M. FERREIRA'),
(209, 'MARCOS', '1944-11-02', 'Masculino', 'R.ANTONIO JOSE SILVA'),
(210, 'VANESSA', '1982-09-08', 'Feminino', 'R. AMARAL GURGEL'),
(211, 'CARLOS', '1984-11-14', 'Masculino', 'R.PERO LOPES DE SOUZA'),
(212, 'DAIANE', '1981-08-27', 'Feminino', 'R.CDSA SICILIANO-91'),
(213, 'RENATA', '1987-01-11', 'Feminino', 'AV.VASCO DA GAMA. 55'),
(214, 'DANIEL', '1981-09-16', 'Masculino', 'R.LARANJEIRAS-59-AP-151'),
(215, 'MARINA', '1980-01-24', 'Feminino', 'AV.ANGELICA-1.648-AP-94'),
(216, 'GIOVANA', '1980-07-25', 'Feminino', 'R.GUAJAJARAS'),
(217, 'SILVIA', '1963-11-28', 'Feminino', 'R.PROF.ALEXANDRE CORREIA'),
(218, 'ADRIANO', '1971-11-26', 'Masculino', 'R. CORREIA DE LEMOS'),
(219, 'ROBERTA', '1978-08-08', 'Feminino', 'R.ALVES GUIMARAES'),
(220, 'FELIPE', '1977-02-16', 'Masculino', 'R.ALVES GUIMARAES'),
(221, 'SAMSAO', '1935-02-02', 'Masculino', 'R.GABRIEL DOS SANTOS'),
(222, 'FRANCISCO', '1957-04-20', 'Masculino', 'R.JOAO MOURA'),
(223, 'BRUNO', '1947-11-30', 'Masculino', 'AL.FERNAO CARDIM'),
(224, 'HWANG', '1941-08-15', 'Masculino', 'R.AFONSO DE FREITAS'),
(225, 'LECIO', '1956-04-17', 'Masculino', 'R. AGUIDA T. SORTINO'),
(226, 'JOSE', '1944-09-10', 'Masculino', 'R. 1 DE MAIO-126-AP-102'),
(227, 'EDUARDO', '1957-03-19', 'Masculino', 'RUA ITALIA-69'),
(228, 'CHRISTINE', '1961-12-06', 'Feminino', 'AV. A. SENNA'),
(229, 'LEDA', '1947-05-19', 'Masculino', 'PRACA VISC.S.FONTES-167-AP-91'),
(230, 'MARIO', '1960-10-01', 'Masculino', 'AV. NIEMEIER'),
(231, 'SAMSAO', '1935-01-02', 'Masculino', 'R.GABRIEL SANTOS'),
(232, 'CARLOS', '1985-11-10', 'Masculino', 'R.ANTONIA BOSCHETTI'),
(233, 'SHEILA', '1973-03-29', 'Feminino', 'R. DAS FIANDEIRAS'),
(234, 'MARCELO', '1943-08-06', 'Masculino', 'RUA TUPINAMBAS'),
(235, 'FERNANDO', '1972-11-12', 'Masculino', 'R. CANARIO'),
(236, 'THOMAS', '1979-09-13', 'Masculino', 'R. RAFAEL C. SAMPAIO'),
(237, 'LUIS', '1975-02-15', 'Masculino', 'R.DR.NOGUEIRA MARTINS'),
(238, 'SILENA', '1984-12-23', 'Feminino', 'AV. 26 A'),
(239, 'CLAUDIO', '1956-05-08', 'Masculino', 'R.QUATA'),
(240, 'ZENILDO', '1954-05-29', 'Masculino', 'R.OLAVO BASTOS'),
(241, 'FELIPE', '1976-11-22', 'Masculino', 'R.ROUCHINOL'),
(242, 'GASTAO', '1950-06-18', 'Masculino', 'R. JERONIMO DA VEIGA'),
(243, 'RUI', '1971-10-04', 'Masculino', 'PR. DE ICARAI'),
(244, 'LUCIANA', '1982-08-12', 'Feminino', 'R.JULIO PRESTES'),
(245, 'PEDRO', '1943-06-29', 'Masculino', 'R.TUIM'),
(246, 'KHALIL', '1948-05-28', 'Masculino', 'R.BALTAZAR DA VEIGA'),
(247, 'MARIA', '1951-03-19', 'Feminino', 'R.BALTAZAR DA VEIGA'),
(248, 'LEOPOLDO', '1968-01-18', 'Masculino', 'R.ITACOLOMI'),
(249, 'SALETE', '1955-10-21', 'Feminino', 'R. ALEMANHA'),
(250, 'NUBIA', '1984-04-08', 'Feminino', 'R.MONTEVIDEU'),
(251, 'CARLA', '1983-05-31', 'Feminino', 'R.BURITI ALEGRE'),
(252, 'FRANCISCO', '1967-12-13', 'Masculino', 'R.MARIA CRISTINA MOREIRA'),
(253, 'FABIO', '1970-08-18', 'Masculino', 'AV. A. DE PAIVA'),
(254, 'MARIA', '1977-01-20', 'Feminino', 'R.SAO SEBASTIAO'),
(255, 'MICHAEL', '1952-09-08', 'Masculino', 'R. ANTONIO P. MENDES'),
(256, 'FABIANA', '1981-11-26', 'Feminino', 'R.WALDOMIRO M. RODRIGUES'),
(257, 'ALISSA', '1968-06-07', 'Feminino', 'R. HABIBB GEBARA'),
(258, 'CLAUDINEI', '1965-10-29', 'Masculino', 'R. GOTHARD KAECEMODEL'),
(259, 'HOSANA', '1960-01-31', 'Feminino', 'R.NOVE DE JULHO'),
(260, 'SILVIA', '1965-12-12', 'Feminino', 'AL.BADEJO'),
(261, 'EVERALDO', '1939-07-12', 'Masculino', 'R.CRITIOS'),
(262, 'MARCIA', '1982-11-23', 'Feminino', 'R.DO ARCIPRESTE'),
(263, 'HELDER', '1966-12-12', 'Masculino', 'AV. EXPEDITO GARCIA'),
(264, 'FLAVIO', '1974-05-17', 'Masculino', 'R. BR. DA TORRE'),
(265, 'ANA', '1961-04-10', 'Feminino', 'R. SERGIPE'),
(266, 'RICARDO', '1960-08-09', 'Masculino', 'AV.INDEPENDENCIA'),
(267, 'FABIANA', '1976-08-05', 'Feminino', 'R. NUPUTIRA'),
(268, 'WILLIAM', '1981-04-17', 'Masculino', 'R.JUDITH P. ESTEVES'),
(269, 'ANDRE', '1963-09-19', 'Masculino', 'RUA MARITUBA'),
(270, 'ADRIANO', '1966-08-04', 'Masculino', 'AL.AUGUSTO STELLFELD'),
(271, 'ETTY', '1957-07-25', 'Feminino', 'R.URIMONDURA'),
(272, 'SERGIO', '1948-05-21', 'Masculino', 'AV. E. PESSOA'),
(273, 'NARA', '1968-10-09', 'Feminino', 'R. MOLIERE'),
(274, 'MAURO', '1971-08-22', 'Masculino', 'R.NATAL'),
(275, 'JOAO', '1961-02-12', 'Masculino', 'EST.DO JOA'),
(276, 'LIGIA', '1985-03-07', 'Feminino', 'AV.REBOUCAS'),
(277, 'ALBERTO', '1974-01-13', 'Masculino', 'R.PARATINGA'),
(278, 'PEDRO', '1968-06-01', 'Masculino', 'R. SAO JUDAS TADEU'),
(279, 'TIAGO', '1980-08-09', 'Masculino', 'R.CAMILO'),
(280, 'ALAN', '1981-07-20', 'Masculino', 'EST.UNIAO INDUSTRIA'),
(281, 'GRACIELA', '1980-12-24', 'Feminino', 'AV.NS.FATIMA'),
(282, 'ANTONIO', '1955-11-16', 'Masculino', 'AV.JOSE GIORGI'),
(283, 'RHADIA', '1987-09-15', 'Feminino', 'R.PARTICULAR'),
(284, 'PAULO', '1955-02-20', 'Masculino', 'R. MAESTRO C. NARDELLI'),
(285, 'JOAO', '1979-03-13', 'Masculino', 'R.DR.RENATO P. BARROS'),
(286, 'ERICA', '1979-05-13', 'Feminino', 'R.JOSE BARBOSA DE ALMEIDA'),
(287, 'LUCIANE', '1975-09-26', 'Feminino', 'R.PASSAGEM'),
(288, 'HEINRICH', '1956-03-25', 'Masculino', 'R.PORTO UNIAO'),
(289, 'GRAZZIELE', '1983-06-09', 'Feminino', 'R.JOAO WOLF FILHO'),
(290, 'THIAGO', '1977-08-24', 'Masculino', 'R. DR. AFONSO PENA'),
(291, 'VALDINEI', '1969-05-02', 'Masculino', 'ITALO P. BELINI'),
(292, 'RICARDO', '1965-05-03', 'Masculino', 'AV.P. M.DE MORAIS'),
(293, 'JOAO', '1954-05-03', 'Masculino', 'R.JAMANARI'),
(294, 'VINICIUS', '1974-07-18', 'Masculino', 'R. DAS FLORES'),
(295, 'ALFIERI', '1962-02-12', 'Masculino', 'PC.R. GONCALVES'),
(296, 'LUCIANO', '1942-04-07', 'Masculino', 'R.MARANHAO'),
(297, 'LUIZ', '1945-05-20', 'Masculino', 'R.S.VERGUEIRO'),
(298, 'JORGE', '1971-02-06', 'Masculino', 'R. CAP. PINTO FERREIRA'),
(299, 'RONISA', '1962-10-25', 'Feminino', 'R.VOLUNTARIOS PATRIA'),
(300, 'HUMBERTO', '1958-02-15', 'Masculino', 'R. DR. LUIZ MIGLIANO'),
(301, 'HUMBERTO', '1958-02-15', 'Masculino', 'AL. ARAPANES-178'),
(302, 'ERTO', '1958-02-15', 'Masculino', 'AL. DOS ARAPANES'),
(303, 'ANTONIO', '1946-11-01', 'Masculino', 'AV.RUI BARBOSA'),
(304, 'GABRIEL', '1962-09-11', 'Masculino', 'R.JOAO A. AZEREDO'),
(305, 'HUMBERTO', '1958-02-15', 'Masculino', 'AL. DOS ARAPANES'),
(306, 'SIMONE', '1972-10-29', 'Feminino', 'R.L. MULLER'),
(307, 'AUGUSTO', '1949-08-30', 'Masculino', 'R.CLARA NUNES'),
(308, 'BRUNO', '1976-03-16', 'Masculino', 'AV.L. DE P.MACHADO'),
(309, 'PAULO', '1986-12-02', 'Masculino', 'MARILDA OLIVEIRA'),
(310, 'WILSON', '1964-09-19', 'Masculino', 'AV. ADOLFO BASTOS'),
(311, 'FLAVIO', '1962-12-12', 'Masculino', 'AL. FRANCA'),
(312, 'FLAVIO', '1962-01-12', 'Masculino', 'AL. FRANCA'),
(313, 'ADEMIR', '1958-02-14', 'Masculino', 'R.JOSE CARLOS DE RESENDE'),
(314, 'FELIPE', '1984-10-20', 'Masculino', 'R. DEZESSEIS'),
(315, 'CESAR', '1950-03-01', 'Masculino', 'AL.CARAGUATATUBA'),
(316, 'ROSA', '1946-03-31', 'Feminino', 'R. AMAZONAS MARCONDES'),
(317, 'ERNANI', '1980-03-12', 'Masculino', 'R.ABILIO SOARES'),
(318, 'ROBERTO', '1980-05-23', 'Masculino', 'AV.S.PAULO ANTIGO'),
(319, 'VIANI', '1980-07-29', 'Masculino', 'R Blah'),
(320, 'MARLON', '1969-08-15', 'Masculino', 'R. ANTONIO C. SALLES FILHO'),
(321, 'ANDREA', '1965-07-01', 'Feminino', 'R.ANTONIO CARLOS S. FILHO'),
(322, 'JOSE', '1967-04-18', 'Masculino', 'R. PERNAMBUCO'),
(323, 'SILVIO', '1981-03-09', 'Masculino', 'R. 2 DE DEZEMBRO'),
(324, 'CLEIDE', '1959-03-10', 'Feminino', 'R.ANACLETO'),
(325, 'MARCO', '1966-10-20', 'Masculino', 'R.PLATINA'),
(326, 'ALEXANDER', '1974-02-02', 'Masculino', 'R.DR .MAURO P.ALMEIDA'),
(327, 'FERNANDO', '1978-06-09', 'Masculino', 'PCA IRMAOS KARMAN'),
(328, 'KARINA', '1979-05-26', 'Feminino', 'R.PARA'),
(329, 'ALESSANDRA', '1975-07-02', 'Feminino', 'R. ELIANE PEREIRA LOPES'),
(330, 'VICENTE', '1959-03-27', 'Masculino', 'R.DIOGO FREIRE'),
(331, 'ROGERIO', '1970-07-28', 'Feminino', 'R.BARTOLOMEO BON'),
(332, 'LEONARDO', '1974-11-21', 'Masculino', 'AV.SERNAMBETIBA'),
(333, 'MAURO', '1942-08-25', 'Masculino', 'R. JOVITA'),
(334, 'ILIDIO', '1943-10-11', 'Masculino', 'OTHON FELICIANO'),
(335, 'ROSANGELA', '1956-10-21', 'Feminino', 'R. S. SANTOS'),
(336, 'JOSE', '1954-07-30', 'Masculino', 'AV. A. DO BRASIL'),
(337, 'ANTONIO', '1945-10-16', 'Masculino', 'AL. ITU-885-AP-51'),
(338, 'SALETE', '1966-04-02', 'Feminino', 'R.PLUTARCO 30-AP152-BL1'),
(339, 'ILANA', '1985-06-12', 'Feminino', 'R.MANOEL JOAQUIM TEIXEIRA'),
(340, 'LUIS', '1976-03-22', 'Masculino', 'AV. PEDRO DE TOLEDO'),
(341, 'JULIANO', '1975-08-05', 'Feminino', 'AV.DEP.RENATO AZEREDO'),
(342, 'DANIELE', '1980-08-14', 'Feminino', 'AV.DEP.RENATO AZEREDO'),
(343, 'SILVETE', '1965-05-13', 'Feminino', 'R.MARECHAL DEODORO'),
(344, 'MARIA', '1946-06-13', 'Feminino', 'R. SANTA ALBINA'),
(345, 'JOAO', '1934-11-03', 'Masculino', 'R.STA.ALBINA'),
(346, 'LUANA', '1984-02-01', 'Feminino', 'R. JOSE DA PENHA'),
(347, 'LUIS', '1982-01-03', 'Masculino', 'R.LUIZ PINHEIRO DA SILVA'),
(348, 'REINALDO', '1965-07-13', 'Masculino', 'TR. FRANCISCA CHRISPIN'),
(349, 'LEANDRA', '1976-11-04', 'Feminino', 'ALM.GOMIDES OLIVEIRA'),
(350, 'SIRGLEY', '1968-05-23', 'Feminino', 'R.DR.ROMEU PEREIRA'),
(351, 'WAGNER', '1952-03-20', 'Masculino', 'R.ELTTORE RANGO DGARONA'),
(352, 'CRISTIANO', '1973-07-15', 'Masculino', 'ALM. GOMIDES OLIVEIRA'),
(353, 'FERNANDA', '1975-06-11', 'Feminino', 'R. BENEDITO PEREIRA SILVA'),
(354, 'MARCELO', '1972-09-25', 'Feminino', 'R. BENEDITO PEREIRA SILVA'),
(355, 'MARCELO', '1972-09-25', 'Feminino', 'R. BENEDITO PEREIRA SILVA'),
(356, 'GERSON', '1941-05-13', 'Masculino', 'R.QUELIZITA'),
(357, 'RICARDO', '1979-11-17', 'Masculino', 'R. PRSA ISABEL'),
(358, 'CRISTIANO', '1980-01-13', 'Masculino', 'R.PRES.PRUDENTE'),
(359, 'EMANUELA', '1976-03-16', 'Feminino', 'AV. MACUCO'),
(360, 'LUIZ', '1940-04-19', 'Masculino', 'R: ANTONIO DE G. GIUDICE'),
(361, 'FABIO', '1977-04-17', 'Masculino', 'R.NICALO PISANO'),
(362, 'ZINA', '1939-12-05', 'Feminino', 'MAL.FLORIANO PEIXOTO'),
(363, 'MARISTELA', '1971-12-02', 'Feminino', 'R.JOAQUIM ANTUNES'),
(364, 'MARISTELA', '1971-12-02', 'Feminino', 'R.JOAQUIM ANTUNES'),
(365, 'WYLER', '1938-06-16', 'Masculino', 'R.V.LACERDA'),
(366, 'KIYORA', '1957-06-03', 'Feminino', 'R. VICOSA DO CEARA'),
(367, 'KIYOKA', '1957-06-03', 'Feminino', 'R. VICOSA DO CEARA'),
(368, 'ROSA', '1967-09-27', 'Feminino', 'R. COMEND. ELIAS ASSI'),
(369, 'JOSE', '1957-05-10', 'Masculino', 'AV.L. COSTA'),
(370, 'ROBERTO', '1960-03-31', 'Feminino', 'R 123'),
(371, 'THAIS', '1983-04-10', 'Feminino', 'R.VICOSA DO CEARA'),
(372, 'FABIO', '1964-12-30', 'Masculino', 'R.CARDOSO DE ALMEIDA'),
(373, 'CAETANO', '1959-08-26', 'Masculino', 'R.PROFªCAROLINA RIBEIRO'),
(374, 'SAMIR', '1982-07-11', 'Masculino', 'R.ARMINDO RANGRAB'),
(375, 'LEOPOLDO', '1950-12-04', 'Masculino', 'R.DOMINGOS AUGUSTO SETTI'),
(376, 'LORIS', '1948-02-21', 'Feminino', 'R.PROF.A. LOBO'),
(377, 'SORAIA', '1964-09-07', 'Feminino', 'R.CONSELHEIRO NEBIAS'),
(378, 'NILDEMAR', '1948-11-24', 'Masculino', 'R.MIN.GABRIEL R.PASSOS'),
(379, 'CIRO', '1944-09-21', 'Masculino', 'R.PENSILVANIA'),
(380, 'TIAGO', '1982-11-17', 'Masculino', 'R .ANTONIO A. AFONSO'),
(381, 'MAISA', '1975-04-27', 'Feminino', 'R.TREZE DE MAIO'),
(382, 'ANDRE', '1981-07-22', 'Masculino', 'R.EDUARDO SATHLER'),
(383, 'VILMA', '1962-01-01', 'Feminino', 'R.TEN.MESQUITA'),
(384, 'JOSE', '1959-06-01', 'Masculino', 'R.TEN.MESQUITA'),
(385, 'VANIA', '1962-05-04', 'Feminino', 'EST.DO RIO GRANDE'),
(386, 'WELLINGTON', '1964-04-02', 'Masculino', 'EST.DO RIO GRANDE'),
(387, 'PAULO', '1959-07-08', 'Masculino', 'R. TAPAJOS'),
(388, 'CILENE', '1951-07-04', 'Feminino', 'AV.SERNAMBETIBA'),
(389, 'ELMAR', '1959-06-24', 'Feminino', 'R. CARAMURU'),
(390, 'JORGE', '1959-10-29', 'Masculino', 'AV.RAIMUNDO M.JR.'),
(391, 'MARISA', '1977-09-21', 'Feminino', 'R.MADRE CABRINI'),
(392, 'SERGIO', '1965-11-23', 'Masculino', 'AV.CATARINA'),
(393, 'ELISABETE', '1963-05-23', 'Feminino', 'AV.RAIMUNDO M.JR.'),
(394, 'CARLOS', '1961-09-20', 'Masculino', 'AV.LUIZ ARANHA'),
(395, 'EDUARDO', '1946-08-23', 'Masculino', 'R.PAULO C.DE ANDRADE'),
(396, 'PAULA', '1980-07-08', 'Feminino', 'R.ALBERTO DE CAMPOS'),
(397, 'ADRIANA', '1973-07-01', 'Feminino', 'R.ALBERTO DE CAMPOS'),
(398, 'ANGELA', '1954-01-04', 'Feminino', 'AV.PORTUGAL'),
(399, 'RUBENS', '1946-07-05', 'Masculino', 'R.PEROLA'),
(400, 'LUIZ', '1961-03-16', 'Feminino', 'AL.MIN.ROCHA AZEVEDO'),
(401, 'ANTONIO', '1948-10-05', 'Masculino', 'R.ALEGRE'),
(402, 'REMY', '1942-05-08', 'Masculino', 'AV.R.COELHO LISBOA'),
(403, 'ISABELLA', '1984-03-28', 'Feminino', 'R.ANTONIO MARIZ'),
(404, 'EDUARDO', '1962-08-27', 'Masculino', 'R.PROF.HUMBERTO ROHDENN'),
(405, 'MARIA', '1948-12-24', 'Feminino', 'AV. R. COELHO LISBOA'),
(406, 'ANTONIO', '1948-10-05', 'Masculino', 'R.ALEGRE'),
(407, 'TIAGO', '1981-12-05', 'Masculino', 'R.PAIS BARRETO'),
(408, 'WAGNER', '1953-01-02', 'Masculino', 'R.MJ FREIRE'),
(409, 'ANTONIO', '1943-11-24', 'Masculino', 'R.SAMPAIO SOARES'),
(410, 'ALFREDO', '1939-09-19', 'Masculino', 'R.CONSORCIO'),
(411, 'MARIA', '1968-09-09', 'Feminino', 'R.ABILIO SOARES'),
(412, 'EDSON', '1951-04-17', 'Masculino', 'AV 13'),
(413, 'HERMES', '1939-04-22', 'Masculino', 'AV.ARGENTINA'),
(414, 'ANDRE', '1975-01-03', 'Masculino', 'R.PAULO SETUBAL'),
(415, 'RODRIGO', '1975-06-20', 'Masculino', 'AV.OSVALDO PIVA'),
(416, 'FERNANDA', '1983-04-13', 'Feminino', 'R.FREI FRANCISCO SAMPAIO'),
(417, 'CLAUDIO', '1947-11-22', 'Masculino', 'R.PEACABA'),
(418, 'CARLOS', '1963-03-21', 'Masculino', 'R.TUCUMA'),
(419, 'MARCELO', '1972-05-31', 'Masculino', 'R. MAL. R. CASTILLA'),
(420, 'REINALDO', '1979-02-14', 'Masculino', 'R.MORRADOS'),
(421, 'HAMILTON', '1965-07-05', 'Masculino', 'R.MONTE CASEROS'),
(422, 'LUIZ', '1944-09-20', 'Masculino', 'ESTR.JOAQUIM CARDOSO FILHO'),
(423, 'AMANDA', '1978-11-28', 'Feminino', 'R.LOS ANGELES'),
(424, 'RODRIGO', '1982-05-31', 'Masculino', 'R.ARMANDO BACKX'),
(425, 'FABIO', '1979-08-05', 'Masculino', 'R.LOS ANGELES'),
(426, 'CRISTIANE', '1982-06-26', 'Feminino', 'R.NILO'),
(427, 'EVANDRO', '1987-03-23', 'Masculino', 'R.CUIABA'),
(428, 'ROSALVO', '1968-03-17', 'Masculino', 'AV.CIDADE JARDIM'),
(429, 'FABIO', '1970-02-18', 'Masculino', 'R.ARGENTINA'),
(430, 'JOSE', '1958-06-05', 'Masculino', 'R.MARACAIBO'),
(431, 'MICHAEL', '1980-08-06', 'Masculino', 'AV.OSWALDO CRUZ'),
(432, 'ANTONIO', '1936-10-20', 'Masculino', 'VIC.CARVALHO'),
(433, 'MARINO', '1955-03-25', 'Masculino', 'R.FRANCA'),
(434, 'CARLOS', '1973-11-16', 'Masculino', 'R.TABANTINGUERA'),
(435, 'ANTONIO', '1954-06-12', 'Masculino', 'PRACA PIO XII 831'),
(436, 'JULIO', '1957-03-25', 'Masculino', 'PRACA PIO XI 831'),
(437, 'DEBORA', '1981-02-11', 'Feminino', 'R.PEDRO NOSRALLA'),
(438, 'ESTEVAM', '1951-06-24', 'Masculino', 'R.DR. OSVALDO OLIVEIRA LIMA'),
(439, 'ANA', '1983-05-25', 'Feminino', 'JOVE MANOEL SANTOS'),
(440, 'ANDERSON', '1983-10-21', 'Masculino', 'R.LUCIANOPOLIS'),
(441, 'RENATA', '1974-07-26', 'Feminino', 'R.STA LEOCADOA'),
(442, 'HILDA', '1944-03-12', 'Feminino', 'R.STA LEOCARDIA'),
(443, 'RAFAEL', '1981-07-16', 'Feminino', 'R.ESPIRITO SANTO'),
(444, 'ANDREIA', '1974-02-02', 'Feminino', 'R.PAULO MALDI'),
(445, 'CRISTIAN', '1969-01-21', 'Masculino', 'R.PAULO MALDI'),
(446, 'MASUMI', '1951-10-15', 'Feminino', 'R. DR. CARAMURU PAES LEME'),
(447, 'MASUMI', '1951-10-15', 'Feminino', 'R. DR. CARAMURU PAES LEME'),
(448, 'MARCELA', '1983-06-09', 'Feminino', 'R.JOSE LUIZ SILHO'),
(449, 'FRANCISCO', '1960-06-18', 'Masculino', 'TV.D ROMUALDO COELHO'),
(450, 'FABIANA', '1983-02-28', 'Feminino', 'R.RIOLANDIA'),
(451, 'LUIZ', '1953-05-14', 'Masculino', 'R.AIRES DA CUNHA'),
(452, 'PAMELA', '1985-11-22', 'Feminino', 'R.FERROVIARIOS'),
(453, 'CINTIA', '1987-01-29', 'Feminino', 'R.DR.TOLENTINO FILGUEIRAS'),
(454, 'PEDRO', '1946-07-01', 'Masculino', 'AV.C. MARAPENDI'),
(455, 'FERNANDO', '1962-10-18', 'Masculino', 'R.SILVEIRA BUENO'),
(456, 'MARCOS', '1980-01-08', 'Masculino', 'R. ALAMEDA FRANCA'),
(457, 'BENI', '1930-03-19', 'Feminino', 'AV.N.S.COPACABANA'),
(458, 'SANDRA', '1955-08-18', 'Feminino', 'R.M.COVAS JUNIOR'),
(459, 'RODRIGO', '1986-06-17', 'Masculino', 'R.OSCAR FREIRE'),
(460, 'JULIO', '1963-07-19', 'Masculino', 'R. ANDRADITA'),
(461, 'RODRIGO', '1986-06-17', 'Masculino', 'R.OSCAR FREIRE'),
(462, 'CRISTIANE', '1978-12-24', 'Feminino', 'R.DJALMA DUTRA'),
(463, 'FLAVIO', '1970-03-14', 'Masculino', 'R. ITAJARA'),
(464, 'WILTER', '1951-11-29', 'Masculino', 'R.DQ. DE CAXIAS'),
(465, 'PAULO', '1946-05-24', 'Masculino', 'R.ESTEVAO DE MEDONCA'),
(466, 'RODRIGO', '1975-02-19', 'Masculino', 'R.GIOVANNI PATTOLI'),
(467, 'JOSE', '1965-12-13', 'Masculino', 'CD.DOS BURITIS S/N LT AR 06 QD 08-'),
(468, 'LUIZ', '1961-06-10', 'Masculino', 'LOT.SITIOS PRIMAVERA'),
(469, 'MARISA', '1958-06-10', 'Feminino', 'AV.P.DULCIDIO CARDOSO'),
(470, 'NILSON', '1962-03-26', 'Feminino', 'AV.CANAL MARAPENDI'),
(471, 'LEONARDO', '1964-02-21', 'Feminino', 'R. TUPI'),
(472, 'MARLENE', '1950-12-01', 'Feminino', 'PCA ARTUR PADERZOLI. 29'),
(473, 'LEANDRO', '1978-04-15', 'Masculino', 'R.SANTA MADALENA'),
(474, 'SAMUEL', '1976-03-17', 'Masculino', 'R.OSIRIS M. ALMEIDA'),
(475, 'SANCHO', '1952-04-23', 'Masculino', 'PCA. ARTUR PADERZOLI'),
(476, 'CESAR', '1958-05-12', 'Masculino', 'R.ACRE'),
(477, 'CLAUDIO', '1967-01-01', 'Masculino', 'QNN 03 CJ. E LT 41-CEILANDIA-'),
(478, 'DANIELA', '1977-01-05', 'Feminino', 'RUA P.BARRETO'),
(479, 'CARMECY', '1951-03-08', 'Feminino', 'AV. GUSTAVO ADOLFO'),
(480, 'ILIDIO', '1962-04-29', 'Masculino', 'R.ARICOBE'),
(481, 'PAULO', '1971-12-25', 'Masculino', 'AV.PEDRO DE TOLEDO'),
(482, 'VALQUIRIA', '1957-08-11', 'Feminino', 'AV. PAES DE BARROS'),
(483, 'CID', '1948-11-18', 'Masculino', 'R. BERLIN'),
(484, 'FERNANDO', '1960-10-16', 'Masculino', 'AV.CANAL DE MARAPENDI'),
(485, 'THAIS', '1986-11-05', 'Feminino', 'AV.ROUXINOL'),
(486, 'FILIPPO', '1964-08-15', 'Masculino', 'R. SAO PAULO ANTIGO'),
(487, 'ALVARO', '1976-05-11', 'Masculino', 'R.COMENDADOR JOSE DE MATOS'),
(488, 'EDGARD', '1963-06-21', 'Masculino', 'AV.VIEIRA SOUTO'),
(489, 'RENATO', '1952-12-19', 'Masculino', 'AL. MIN.ROCHA AZEVEDO'),
(490, 'RUBENS', '1946-05-25', 'Masculino', 'R.PEIXOTO GOMIDE'),
(491, 'MARCELO', '1962-12-31', 'Masculino', 'R. LARGO DA BATALHA'),
(492, 'RAFAEL', '1979-08-22', 'Masculino', 'R.CLELIA'),
(493, 'KLEBER', '1977-11-20', 'Masculino', 'AV.QUEIROS FILHO'),
(494, 'FRIEDRICH', '1938-07-01', 'Masculino', 'AV.SOROCABA'),
(495, 'GLAUCIA', '1976-12-31', 'Feminino', 'AV. CARLOS A.LOPES'),
(496, 'MARCOS', '1980-05-03', 'Masculino', 'R.ARNALDO V.PORTILHO'),
(497, 'EDELSON', '1954-07-26', 'Masculino', 'R.ARNALDO V.PORTILHO'),
(498, 'MARCO', '1953-12-06', 'Masculino', 'R. TORRES HOMEM'),
(499, 'ARTUR', '1958-04-12', 'Masculino', 'R.ALM. GUILHEM'),
(500, 'ANTONIO', '1943-07-20', 'Masculino', 'AL.RUBI'),
(501, 'EDUARDO', '1963-01-06', 'Masculino', 'R.SIBIPIRUNA'),
(502, 'THIAGO', '1982-05-13', 'Masculino', 'R. JOSE MATHEUS DOS REIS'),
(503, 'HELIO', '1952-08-01', 'Masculino', 'AV.NIEMEYER'),
(504, 'LUCAS', '1985-01-14', 'Masculino', 'R.HILDA CESAR'),
(505, 'MARISE', '1986-10-24', 'Feminino', 'R.QUATRO'),
(506, 'MARCOS', '1955-05-27', 'Masculino', 'AL. MOREA'),
(507, 'CASSIO', '1966-04-01', 'Masculino', 'R. FRANCISCO FRED'),
(508, 'FLAVIO', '1977-08-30', 'Feminino', 'R.AFONSO GARCIA'),
(509, 'LUCIANO', '1978-08-07', 'Masculino', 'R.JOSE BENEDITO SALINAS'),
(510, 'ADRIANA', '1983-04-19', 'Feminino', 'AV. PAULA FERREIRA 89- AP 72 C'),
(511, 'ARTHUR', '1956-06-29', 'Masculino', 'EST.DA GAVEA'),
(512, 'WALDECI', '1966-03-12', 'Masculino', 'R.FRAGATA CONSTITUICAO'),
(513, 'MARTHA', '1942-01-18', 'Feminino', 'R.BELA CINTRA'),
(514, 'HELOISA', '1946-12-16', 'Feminino', 'R.JACAREZINHO'),
(515, 'MARIA', '1953-10-02', 'Feminino', 'R.PEROLA'),
(516, 'MARIANGELA', '1952-07-07', 'Feminino', 'EST.JACAREPAGUA'),
(517, 'FELIPE', '1976-11-10', 'Masculino', 'AV.JARBAS DE CARVALHO'),
(518, 'SILVIA', '1981-06-10', 'Feminino', 'AV.JARBAS DE CARVALHO'),
(519, 'EVANDRO', '1981-11-15', 'Masculino', 'R.CAMPOS SALLES'),
(520, 'JANAINA', '1973-01-26', 'Feminino', 'R.MAL.DEODORO'),
(521, 'WILSON', '1945-10-19', 'Masculino', 'R.MAL. DEODORO'),
(522, 'MARIA', '1964-11-12', 'Feminino', 'R. FUAD JUBRAN'),
(523, 'MARCELO', '2007-09-17', 'Masculino', 'R.CAMPOS NOVOS'),
(524, 'MARCELO', '1974-09-14', 'Masculino', 'PRAIA DE ICARAI'),
(525, 'JORGE', '1966-11-13', 'Masculino', 'R.DONA ELIZA'),
(526, 'FABIANA', '1981-12-17', 'Feminino', 'R. DR. JOSE M.WHITACKER'),
(527, 'JOSE', '1953-10-23', 'Masculino', 'R.CAETANO DE ALMEIDA'),
(528, 'REGIANE', '1983-05-20', 'Feminino', 'R.GIUSEPPE TARTINI S/N BLC.12 B AP.33-'),
(529, 'HELENICE', '1961-04-22', 'Feminino', 'R.PAISSANDU'),
(530, 'FRANCO', '1969-07-04', 'Masculino', 'R.GARCIA D AVILA'),
(531, 'ARMANDO', '1956-03-22', 'Masculino', 'R.PAISSANDU'),
(532, 'FRANCO', '1969-07-04', 'Masculino', 'R.GARCIA D AVILA'),
(533, 'ALEXANDRE', '1984-03-02', 'Masculino', 'R.CURITIBA'),
(534, 'PAULO', '1970-09-23', 'Masculino', 'R.ANANATUBA'),
(535, 'JOAO', '1977-11-19', 'Masculino', 'R.JOSE R. PORTELLA'),
(536, 'WALTER', '1961-09-25', 'Masculino', 'R. ALCANTARILLA'),
(537, 'PAULO', '2019-01-25', 'Masculino', 'R.GEN. R. DA COSTA'),
(538, 'PAULO', '1973-01-25', 'Masculino', 'AV. FLORA'),
(539, 'WILSON', '1971-10-08', 'Masculino', 'R. CDOR.ELIAS ZARZUR'),
(540, 'RODRIGO', '1978-01-14', 'Masculino', 'R.CEL FERREIRA BRAGA'),
(541, 'PAULO', '1980-10-07', 'Masculino', 'R. LOURDES'),
(542, 'DIRCEU', '1952-11-26', 'Masculino', 'R. FLORENCIO PUPPO'),
(543, 'ROBERTO', '1955-08-12', 'Masculino', 'AV. SABIA'),
(544, 'MARIO', '1954-03-15', 'Masculino', 'ALM. NSA SRA. R. FATIMA'),
(545, 'SHEILA', '1947-06-08', 'Feminino', 'AV.NIEMEYER'),
(546, 'MARCO', '1952-02-19', 'Masculino', 'R.PRESIDENTE DUTRA'),
(547, 'DANIELA', '1971-10-15', 'Feminino', 'R.PANTOJO'),
(548, 'MARIANA', '1984-02-21', 'Feminino', 'R.JULIO CORTAZAR'),
(549, 'GILBERTO', '1958-12-29', 'Masculino', 'R.CAINGANGS'),
(550, 'JOSE', '1946-08-24', 'Masculino', 'R.REDENTOR'),
(551, 'LANA', '1986-06-27', 'Feminino', 'R.PACARI DA MATA'),
(552, 'MARCELO', '1983-05-25', 'Masculino', 'R.JOSE REGIO'),
(553, 'GERALDO', '1960-09-13', 'Masculino', 'R.GEN. R. DA COSTA'),
(554, 'LAERTE', '1942-05-29', 'Masculino', 'AV.HIGIENOPOLIS'),
(555, 'HELEN', '1973-12-08', 'Feminino', 'R.AGUAPEI'),
(556, 'JOSIANE', '1955-01-04', 'Feminino', 'R.FRANZ POST'),
(557, 'GERALDO', '1960-09-13', 'Masculino', 'R.GEN. R. DA COSTA'),
(558, 'IREMAR', '1959-09-10', 'Masculino', 'R. CARVALHO DE MENDONCA'),
(559, 'RENATO', '1958-03-06', 'Masculino', 'R.CHARLES SPENCER CHAPLIN'),
(560, 'MARCIO', '1961-07-11', 'Masculino', 'R.CONSTANTINO SOUZA'),
(561, 'MARCIO', '1961-07-11', 'Masculino', 'R.CONSTANTINO SOUZA'),
(562, 'SEBASTIAO', '1959-09-21', 'Masculino', 'R.ALVARO F.PINHEIRO'),
(563, 'DANILO', '1939-07-21', 'Masculino', 'R.ITABAQUARA'),
(564, 'ELISA', '1978-05-23', 'Feminino', 'R.ITACEMA'),
(565, 'PAULO', '1971-06-10', 'Masculino', 'R. ROLF LAUBE'),
(566, 'GLACIOMAR', '1939-12-31', 'Masculino', 'AV.ATLANTICA'),
(567, 'ROBERTO', '1947-08-17', 'Masculino', 'AV.HIGIENOPOLIS'),
(568, 'WAGNER', '1970-02-01', 'Masculino', 'R.TUCUNA'),
(569, 'BERNADETE', '1982-08-14', 'Feminino', 'R. JOAO RAMALHO'),
(570, 'RAFAEL', '1956-10-28', 'Masculino', 'R.BERNARDA LUIZ'),
(571, 'EDGAR', '1982-12-13', 'Masculino', 'R. ABRAAO M. CARMO'),
(572, 'FABIO', '1982-03-16', 'Masculino', 'R.ABRAAO M. CARMO'),
(573, 'ANDERSON', '1983-08-10', 'Masculino', 'R.ARTUR DE OLIVEIRA'),
(574, 'LUIZ', '1979-05-25', 'Masculino', 'COND. JD.UBA- R.3 Q.4.L.42'),
(575, 'ROGERIO', '1978-11-03', 'Masculino', 'AV.RIO BONITO'),
(576, 'ARTHUR', '1981-03-19', 'Masculino', 'R.BAHIA'),
(577, 'FRANCISCO', '1951-06-20', 'Masculino', 'R. SACOPA'),
(578, 'ALEXSANDRO', '1974-03-19', 'Masculino', 'R. FRIEDA'),
(579, 'SUELI', '1964-03-22', 'Feminino', 'R.5 DE JULHO'),
(580, 'CLAUDIA', '1987-10-20', 'Feminino', 'R.TAMOIO'),
(581, 'ANA', '1975-01-10', 'Feminino', 'R. MAL. PILSUDSKI'),
(582, 'JAYME', '1962-12-02', 'Masculino', 'R.SOUSA FRANCO'),
(583, 'ANA', '1957-04-02', 'Feminino', 'PCA. ANTONIO CALADO'),
(584, 'JOAO', '1959-06-18', 'Masculino', 'PCA. ANTONIO CALADO'),
(585, 'TIAGO', '1975-11-01', 'Masculino', 'R.ANTONIO LEPIANE'),
(586, 'TIAGO', '1975-11-01', 'Masculino', 'R.ANTONIO LEPIANE'),
(587, 'MARIA', '1977-09-05', 'Feminino', 'PRC. AMERICO COSTA'),
(588, 'CLAUDIA', '1981-06-29', 'Feminino', 'R.JOAO CEZARINE'),
(589, 'PERSIS', '1973-06-11', 'Masculino', 'R. JOSE NEVES'),
(590, 'LUIZ', '1949-10-15', 'Masculino', 'R. STA JUSTINA'),
(591, 'FERNANDA', '1975-08-23', 'Feminino', 'R.PROF.ARTUR RAMOS'),
(592, 'CHRISTIAN', '1982-04-12', 'Masculino', 'R.ITACEMA'),
(593, 'HENRIQUE', '1976-02-02', 'Masculino', 'R.MARIA NADER'),
(594, 'EDUARDO', '1960-02-14', 'Masculino', 'AV.VILA EMA'),
(595, 'SERGIO', '1961-03-21', 'Masculino', 'R.3 PEDRAS'),
(596, 'MARCIO', '1977-07-06', 'Masculino', 'R. PRIMO BECHELLI'),
(597, 'LUIS', '1956-01-04', 'Masculino', 'R.PAUMARI'),
(598, 'ANDERSON', '1977-07-19', 'Masculino', 'R. LUIS GAMA'),
(599, 'CLAUDEIR', '1975-01-29', 'Masculino', 'AV.BRASILIA'),
(600, 'ROBERTO', '1950-05-23', 'Masculino', 'PASCOAL MOREIRA'),
(601, 'ALEX', '1981-11-28', 'Masculino', 'R.ROLANDO GAMBINI'),
(602, 'MARCOS', '1984-01-28', 'Masculino', 'R. ODILON BRAGA'),
(603, 'ALBERTO', '1950-03-12', 'Masculino', 'AV.LEBRET'),
(604, 'RENATO', '1972-04-07', 'Masculino', 'R.HARMONIA'),
(605, 'CESAR', '1970-03-03', 'Masculino', 'R. DAS LARANJEIRAS'),
(606, 'SU', '1982-10-05', 'Feminino', 'R.CARDEAL ARCOVERDE'),
(607, 'FERNANDO', '1955-05-30', 'Masculino', 'AV. SERNAMBETIBA'),
(608, 'DANIEL', '1964-10-02', 'Masculino', 'AV.CARLOS BONFANTI'),
(609, 'LUCIA', '1943-12-21', 'Feminino', 'R.PROF.JULIA C.RODRIGUES'),
(610, 'JOAO', '1946-03-20', 'Masculino', 'R. DONA ALEXANDRINA'),
(611, 'CAIRBAR', '1949-03-10', 'Masculino', 'R. PROF.VAHIA  ABREU'),
(612, 'ROGERIO', '1960-06-02', 'Masculino', 'R. JERONIMO VEIGA'),
(613, 'ANDRE', '1992-02-06', 'Masculino', 'R.ORESTES GUIMARAES'),
(614, 'ZURITA', '1940-02-26', 'Feminino', 'AV.IPIRANGA-200-AP-3114 BL.B'),
(615, 'SILVIA', '1969-03-18', 'Feminino', 'AV.JUREMA'),
(616, 'ROMEU', '1968-07-26', 'Masculino', 'R.ANTONIO A. BARRIL'),
(617, 'ELISA', '1963-11-03', 'Feminino', 'R.ANTONIO ALVES BARRIL'),
(618, 'BRAULIO', '1956-08-01', 'Masculino', 'R.MST BORTOLUCCI'),
(619, 'LUCIO', '1970-07-29', 'Masculino', 'AV.GEN.SAN MARTIN'),
(620, 'CLAUDIO', '1978-02-10', 'Masculino', 'R.GUAIPA'),
(621, 'CAMILA', '1981-01-09', 'Feminino', 'R.JOAQUIM BUENO'),
(622, 'WERNER', '1965-05-29', 'Masculino', 'AL.PEGASUS'),
(623, 'JOSE', '1971-06-06', 'Masculino', 'R.UNIAO VITORIA'),
(624, 'JEAN', '1965-09-26', 'Masculino', 'AV.DR.MARTIN LUTHER KING'),
(625, 'WERNER', '1956-05-29', 'Masculino', 'AL.PEGASU'),
(626, 'LUIS', '1946-01-02', 'Masculino', 'R.STA. PAULA'),
(627, 'NILTON', '1952-11-13', 'Masculino', 'SHIN QL .09 CJ.06 LT.18'),
(628, 'MIRIAM', '1953-09-27', 'Feminino', 'SHIN QL 09 CJ.06 LT.18-LAGO NORTE-'),
(629, 'WERNER', '1965-05-29', 'Masculino', 'AL.PEGASUS'),
(630, 'CARLOS', '1956-03-17', 'Masculino', 'TV.VICENTE FEDERICI'),
(631, 'FABIO', '1973-07-09', 'Masculino', 'R. INHAMBU'),
(632, 'EDNEY', '1965-04-18', 'Masculino', 'R.NABUCO DE ARAUJO'),
(633, 'FABIO', '1973-12-13', 'Masculino', 'RUA C. DURAO'),
(634, 'EDNEY', '1965-04-18', 'Masculino', 'R.NABUCO DE ARAUJO'),
(635, 'WASHINGTON', '1959-04-17', 'Masculino', 'R.ADOLPHO DE C. FILHO'),
(636, 'ARLINDO', '1972-01-19', 'Masculino', 'R. PIRES DA MOTA'),
(637, 'DUANI', '1988-04-05', 'Masculino', 'R.APARAO'),
(638, 'SIDALIA', '1953-02-12', 'Feminino', 'R. PEDRO ALVAREZ CABRAL'),
(639, 'NADIA', '1974-01-14', 'Feminino', 'R. S.CARLOS DO PINHAL'),
(640, 'ANDRE', '1977-03-28', 'Masculino', 'R.VSC.DA GRACA'),
(641, 'JOSE', '1944-01-24', 'Masculino', 'R. FRANCA PINTO'),
(642, 'ROSANA', '1955-04-26', 'Feminino', 'R. APINAGES'),
(643, 'ANDRE', '1985-01-19', 'Masculino', 'R. MAESTRO ALPI FRISON'),
(644, 'LILIA', '1962-01-24', 'Feminino', 'R.SAO CIRILO'),
(645, 'ANA', '1979-08-24', 'Feminino', 'R.MONTE ALEGRE'),
(646, 'DOUGLAS', '1977-04-29', 'Masculino', 'AV.EUCLIDES'),
(647, 'TANIA', '1975-06-09', 'Feminino', 'AV.EUCLIDES'),
(648, 'VALMIR', '1962-08-20', 'Masculino', 'R.HADDOCK LOBO'),
(649, 'REGINALDO', '1958-04-17', 'Masculino', 'R.RAFAEL DE CAMPOS'),
(650, 'OTONIEL', '1976-06-20', 'Masculino', 'R.SEN.DANTAS'),
(651, 'JOSE', '1959-03-11', 'Masculino', 'R.ITAIOPOLIS'),
(652, 'SAMUEL', '1969-05-02', 'Masculino', 'R.SEN.DANTAS'),
(653, 'EVANDRO', '1979-03-21', 'Masculino', 'R.JOSE DE ALENCAR'),
(654, 'MONICA', '1975-07-02', 'Feminino', 'AV.ENG.GINO DARTORA'),
(655, 'ARY', '1927-09-23', 'Masculino', 'R.REPUBLICA DO IRAQUE'),
(656, 'LUIZ', '1953-04-18', 'Masculino', 'R.ARTINOPOLIS'),
(657, 'ARLINDO', '1951-09-01', 'Masculino', 'R.BACEUNAS'),
(658, 'FABIO', '1976-03-15', 'Masculino', 'AV.LEONARDO DA VINCI'),
(659, 'FABIO', '1976-03-15', 'Masculino', 'AV.LEONARDO DA VINCI'),
(660, 'PETER', '1949-01-03', 'Masculino', 'R.MONTE ALEGRE'),
(661, 'SHEILA', '1979-09-25', 'Feminino', 'R.MANUEL  X. DOS PASSOS'),
(662, 'SERGIO', '1943-03-15', 'Masculino', 'AV.N.DE COPACABANA'),
(663, 'NIVIO', '1938-10-07', 'Masculino', 'AV.WASHINGTON LUIS'),
(664, 'OZIEL', '1958-12-06', 'Masculino', 'R.CASEMIRO DE ABREU'),
(665, 'DANIELE', '1984-10-31', 'Feminino', 'R.JAMONDA'),
(666, 'FERNANDA', '1983-08-20', 'Feminino', 'R.CLYBAS P. FERRAZ'),
(667, 'MARIA', '1952-11-27', 'Feminino', 'AV.INES'),
(668, 'GUILHERME', '1975-05-04', 'Masculino', 'R. CARLOS SAMPAIO'),
(669, 'EDUARDO', '1943-09-07', 'Masculino', 'R. DOM FRANCISCO C. BARRETO'),
(670, 'MONICA', '1972-07-02', 'Feminino', 'R. LEOPOLDO C.MAGALHAES JR'),
(671, 'EMILIANO', '1946-09-29', 'Masculino', 'LEOPOLDO C MAGALHAESJR'),
(672, 'WALTER', '1965-04-03', 'Masculino', 'TR. ANGELO PICOLLI'),
(673, 'WALMIR', '1965-04-03', 'Masculino', 'TR. ANGELO PICOLI'),
(674, 'ALBERTO', '1959-03-18', 'Masculino', 'AV. SANTO AMARO'),
(675, 'MARIA', '1942-01-03', 'Feminino', 'R. INDIANA'),
(676, 'CLAUDIO', '1945-03-25', 'Masculino', 'R. INDIANA'),
(677, 'MARCOS', '1960-04-18', 'Masculino', 'R. BARAO CASRTO LIMA'),
(678, 'RAUL', '1949-06-24', 'Masculino', 'R. URIMONDUBA'),
(679, 'FABIO', '1976-07-31', 'Masculino', 'R.LUIZ BARBIERI'),
(680, 'JIDEON', '1968-10-03', 'Masculino', 'R. INACIO DIAS LEME'),
(681, 'FABIO', '1935-03-23', 'Masculino', 'R.DONA SALWA SAIGH CALFAT'),
(682, 'JIDEON', '1968-10-03', 'Feminino', 'R. INACIO DIAS LEME'),
(683, 'LUCIANA', '1983-11-08', 'Feminino', 'R.IGARAPIUNA'),
(684, 'CARLOS', '1952-08-17', 'Masculino', 'R.MONLEVADE'),
(685, 'SERGIO', '1955-06-22', 'Masculino', 'PCA.VIDAL ANTONIO DE CASTRO'),
(686, 'ALAYDE', '1937-07-22', 'Feminino', 'R.DONA SALWA S.CALFAT'),
(687, 'ANGELINO', '1962-02-12', 'Masculino', 'R. ARTHUR BAPTISTUCCI'),
(688, 'MARCIO', '1968-06-17', 'Masculino', 'R AGOSTINHO R. FILHO'),
(689, 'VICENTE', '1930-12-03', 'Masculino', 'R. ITACOLOMI'),
(690, 'MANOEL', '1935-06-16', 'Masculino', 'R. MONTE ALEGRE'),
(691, 'FERNANDO', '1965-05-22', 'Masculino', 'R. GOMES DE CARVALHO'),
(692, 'REINALDO', '1960-11-11', 'Masculino', 'R.DAS FIGUEIRAS'),
(693, 'LUIZ', '1946-01-18', 'Masculino', 'R. MORGADO DE MATEUS'),
(694, 'SERGIO', '1952-03-26', 'Masculino', 'R.ALBUQUERQUE LINS'),
(695, 'TEREZINHA', '1952-02-05', 'Feminino', 'R. DOMINGOS BARRETO'),
(696, 'MARIA', '1950-02-28', 'Feminino', 'R. ENG. GUIMARAES VALADAO'),
(697, 'JOSE', '1963-09-25', 'Masculino', 'R. CANINDE'),
(698, 'ALESSANDRA', '1973-04-24', 'Feminino', 'R. BORBA GATO'),
(699, 'LEANDRO', '1980-11-22', 'Masculino', 'R.ANTUNES MACIEL'),
(700, 'JORGE', '1970-12-24', 'Masculino', 'R.ALVARO DE MENEZES'),
(701, 'MARIA', '1964-04-03', 'Feminino', 'R.CARLOS WEBER'),
(702, 'FABIOLA', '1982-07-30', 'Feminino', 'TRAV.RAFAEL FINS'),
(703, 'FABIOLA', '1982-07-30', 'Feminino', 'TRAV.RAFAEL FINS'),
(704, 'GESSIMAR', '1962-12-31', 'Masculino', 'R.VICENTE GALAFASSI'),
(705, 'RODRIGO', '1973-03-26', 'Masculino', 'R.BORBA GATO'),
(706, 'RICARDO', '1967-04-30', 'Masculino', 'R.TUCUNA'),
(707, 'RENATA', '1984-03-08', 'Feminino', 'R.VENEZUELA'),
(708, 'CARLOS', '1946-10-19', 'Masculino', 'R.CAMPEVAS'),
(709, 'MICHELLE', '1980-07-18', 'Feminino', 'R.CANAVIEIRAS'),
(710, 'FABIO', '1970-09-06', 'Masculino', 'R.CRISTIANO VIANA'),
(711, 'GILBERTO', '1951-07-17', 'Masculino', 'AV. INDEPENDENCIA'),
(712, 'POLYANNA', '1980-12-20', 'Feminino', 'AV.BERNARDINO DE CAMPOS'),
(713, 'EMERSON', '1971-09-23', 'Masculino', 'AV.PE ANTONIO TOMAS'),
(714, 'FABIO', '1966-06-25', 'Masculino', 'R. JOAQUIM NABUCO'),
(715, 'ROBERTO', '1944-07-01', 'Masculino', 'AV.LUCIO COSTA'),
(716, 'JOaO', '1980-11-21', 'Masculino', 'RU CAUBI DAMASCENO'),
(717, 'LILIAN', '1962-08-27', 'Feminino', 'R.DELGADO DE CARVALHO'),
(718, 'GERMANA', '1959-11-06', 'Feminino', 'PC.ANTONIO CALADO'),
(719, 'MARIA', '1964-04-19', 'Feminino', 'R. LEONERDO MECCA'),
(720, 'ROSA', '1975-01-01', 'Feminino', 'AV. TAUBATE'),
(721, 'JANAINA', '1980-12-19', 'Feminino', 'R.SAO MANOEL'),
(722, 'RICARDO', '1977-08-28', 'Masculino', 'AV.27'),
(723, 'SANDRA', '1982-03-23', 'Feminino', 'R.GOIANIA'),
(724, 'ANTONIO', '1972-12-28', 'Masculino', 'R. COLORADO DO OESTE'),
(725, 'PAULO', '1978-01-16', 'Masculino', 'R.NAPOLEAO LAUREANO'),
(726, 'ARLENE', '1975-05-31', 'Feminino', 'R.COPACANA'),
(727, 'ARLENE', '1975-05-31', 'Feminino', 'R.COPACABANA'),
(728, 'ANDRE', '1959-11-02', 'Masculino', 'AL.RIBEIRaO PRETO'),
(729, 'KATIUCHIA', '1980-11-19', 'Feminino', 'R.BATATAES'),
(730, 'PAULO', '1980-04-19', 'Masculino', 'ENGUAGUACU'),
(731, 'KELLY', '1982-03-31', 'Feminino', 'CEL.PROOS SOUZA'),
(732, 'FRANCISCO', '1942-03-15', 'Feminino', 'R.ABILIO SOARES'),
(733, 'MARIA', '1980-02-10', 'Feminino', 'R. PRESTES JOAO'),
(734, 'MEIRE', '1986-01-28', 'Feminino', 'R. CIPOTUBA'),
(735, 'RICARDO', '1981-01-29', 'Masculino', 'AV.VIEIRA SOUTO'),
(736, 'CRISTIANO', '1973-08-29', 'Feminino', 'R.TURIASSU'),
(737, 'DIRCEU', '1952-10-15', 'Masculino', 'R. DR. DIMAS C. OMETTO'),
(738, 'ANA', '1983-01-25', 'Feminino', 'R.VIRGEM'),
(739, 'DIRCEU', '1982-12-27', 'Masculino', 'R. DR. DIMAS C. OMETTO'),
(740, 'FERNANDO', '1969-02-08', 'Masculino', 'R.MIRASSOL'),
(741, 'ANTONIO', '1952-08-11', 'Masculino', 'R. CEL. JOAQUIM PIZA'),
(742, 'MARIA', '1951-08-03', 'Feminino', 'R. COSTA VERDE'),
(743, 'LUIZ', '1949-01-09', 'Masculino', 'R.SERIMBURA'),
(744, 'DENISE', '1985-02-19', 'Feminino', 'R. BURITIS'),
(745, 'KELI', '1980-04-26', 'Feminino', 'AV.CARLOS DE CAMPOS'),
(746, 'MIRIAM', '1985-02-25', 'Feminino', 'AL. ITU'),
(747, 'SUELY', '1951-04-18', 'Feminino', 'R.DR.RENATO PAES DE BARROS'),
(748, 'ROBERTO', '1959-02-21', 'Masculino', 'R.DR.RENATO PAES DE BARROS'),
(749, 'KELI', '1980-04-28', 'Feminino', 'AV.CARLOS DE CAMPOS'),
(750, 'LUIZ', '1959-09-09', 'Masculino', 'R.BR. DE JAGUARIPE'),
(751, 'CRISTIANE', '1979-11-04', 'Feminino', 'R.TEOTONIO MONTEIRO B FILHO'),
(752, 'MARCELO', '1970-12-05', 'Masculino', 'R. DOS LAMBARIS'),
(753, 'LABIENO', '1955-03-25', 'Masculino', 'R. IUBATINGA'),
(754, 'IDIO', '1964-03-01', 'Masculino', 'R. ANTONIO ALVES TOLEDO'),
(755, 'ROBERTO', '1961-05-12', 'Masculino', 'EST. DO ENGENHO SECO'),
(756, 'ADRIANE', '1961-04-21', 'Feminino', 'EST. DO ENGENHO SECO'),
(757, 'VILAMI', '1962-12-22', 'Masculino', 'AV. DO ORATORIO'),
(758, 'ANTONIO', '1935-07-10', 'Masculino', 'R MAL HASTINFILO MOURA'),
(759, 'LIANG', '1949-02-19', 'Masculino', 'R.APIACAS'),
(760, 'KARINA', '1985-03-29', 'Feminino', 'AV.CAMPINA'),
(761, 'DENILSON', '1971-02-07', 'Masculino', 'R.SANTO ANDRE'),
(762, 'VALERIA', '1973-07-12', 'Feminino', 'R.SANTO ANDRE'),
(763, 'CLAUDEONOR', '1943-01-09', 'Masculino', 'R.CANCIONEIRO POPULAR'),
(764, 'JACQUES', '1932-10-11', 'Masculino', 'PCA. GERMANIA'),
(765, 'APARECIDO', '1962-04-22', 'Masculino', 'AL.CURITIBA'),
(766, 'JACOB', '1946-11-24', 'Masculino', 'AV.CAVAXI'),
(767, 'SERGIO', '1951-01-20', 'Masculino', 'R. DA LEOPOLDINA'),
(768, 'VALQUIRIA', '1957-02-25', 'Feminino', 'R.FRANCA PINTO'),
(769, 'GERALDO', '1957-02-07', 'Masculino', 'R.AFONSO PENA'),
(770, 'VILTON', '1951-09-21', 'Masculino', 'R.GAL.GLICERIO'),
(771, 'LUIZ', '1948-02-21', 'Masculino', 'R.PROF.ARTHUR RAMOS'),
(772, 'CAROLINA', '1986-08-12', 'Feminino', 'R.DR. LULA'),
(773, 'MONICA', '1985-08-22', 'Feminino', 'R. DO CADMIO'),
(774, 'CARLOS', '1954-07-02', 'Feminino', 'R.JOSE DE O. COELHO'),
(775, 'MARIA', '1958-02-11', 'Feminino', 'AV.LINEU DE P.MACHADO'),
(776, 'ROBERTA', '1981-12-17', 'Feminino', 'AV. BOSCHETTI'),
(777, 'JOSE', '1931-01-14', 'Feminino', 'R. MARCONI'),
(778, 'PABLO', '1970-04-21', 'Masculino', 'R. CEL. LUIZ SCHIMITH'),
(779, 'YONG', '1971-09-21', 'Masculino', 'AV. PAULISTA'),
(780, 'TAMARA', '1987-01-29', 'Feminino', 'R. VISCONDE D. ASSECA'),
(781, 'JOAO', '1964-08-01', 'Feminino', 'R. NS SRA DO BOM CONSELHO'),
(782, 'ANTONIO', '1978-08-11', 'Masculino', 'R.CORREIA DE LEMOS'),
(783, 'SANDRO', '1971-05-07', 'Masculino', 'R. ABILIO SOARES'),
(784, 'CAROLINA', '1987-10-19', 'Feminino', 'AL. ITAPECURU'),
(785, 'WILSON', '1973-09-29', 'Masculino', 'R. DOMINGOS L DA SILVA'),
(786, 'SIMONE', '1972-10-14', 'Feminino', 'R.VICENTE DE CARVALHO'),
(787, 'VICENTE', '1948-10-01', 'Feminino', 'R.CANADA'),
(788, 'JACQUES', '1970-10-02', 'Masculino', 'R.  ITAPEMIRIM'),
(789, 'MICHELE', '1966-09-22', 'Masculino', 'BRAZ CUBAS'),
(790, 'LENY', '1975-04-04', 'Feminino', 'R. ITAPEMIRIM'),
(791, 'RENATA', '1975-04-03', 'Feminino', 'R. ALAGOAS'),
(792, 'BRENNO', '1983-03-21', 'Masculino', 'R. ANGELO SILVA'),
(793, 'ERMANNO', '1939-08-08', 'Masculino', 'AV.SERNAMBETIBA'),
(794, 'CAMILA', '1981-01-25', 'Feminino', 'R. AUSTRALIA'),
(795, 'CARLOS', '1951-09-27', 'Masculino', 'R. ANGELO SILVA'),
(796, 'KARINA', '1976-12-28', 'Feminino', 'R.AFONSO BANDEIRA MELO'),
(797, 'FAUSTO', '1953-05-18', 'Masculino', 'R.PE.JOaO MANUEL'),
(798, 'CARLOS', '1954-02-14', 'Masculino', 'R.CARLOS DEL PRETE'),
(799, 'ESTELA', '1961-06-13', 'Feminino', 'R. DURVAL PEDROSO SILVA'),
(800, 'CELIO', '1979-02-16', 'Masculino', 'R. JURUA'),
(801, 'MARIA', '1961-04-16', 'Feminino', 'AV.BRIGADEIRO LUIS ANTONIO'),
(802, 'CRISTIANE', '1971-01-25', 'Feminino', 'R. SATURNINO DOS SANTOS'),
(803, 'CARLOS', '1942-01-19', 'Masculino', 'R. PRUDENTE MORAES'),
(804, 'ANA', '1946-01-12', 'Feminino', 'R. PRUDENTE MORAES'),
(805, 'FRANCISCO', '1957-03-17', 'Masculino', 'R. CAMPOS SALLES'),
(806, 'ANTONIO', '1958-05-16', 'Masculino', 'R. ABILIO SOARES'),
(807, 'CASSIANO', '1973-03-01', 'Masculino', 'R. INDIANA'),
(808, 'RENATO', '1979-03-30', 'Masculino', 'R. VIS. DE BALSEMAO'),
(809, 'ANDRES', '1959-06-25', 'Masculino', 'R. BANDEIRANTES'),
(810, 'THAIS', '1986-03-06', 'Feminino', 'R. JOSE C. DE SOUZA'),
(811, 'JOSE', '1958-02-01', 'Masculino', 'R.QUIRINO TEIXEIRA'),
(812, 'BENICIO', '1984-08-20', 'Masculino', 'R.QUIRINO TEIXEIRA');
INSERT INTO `Cidadao` (`codigoCidadao`, `nomeCidadao`, `dataNascimento`, `genero`, `enderecoCidadao`) VALUES
(813, 'VERA', '1949-04-25', 'Feminino', 'AV.DR.ARMANDO PANNUNZIO'),
(814, 'JOCELITA', '1973-10-27', 'Feminino', 'R.S.CATARINA Q.245 L.29 C.2'),
(815, 'JOSE', '1972-12-02', 'Masculino', 'R.JH 11 Q.26 L.13 CASA'),
(816, 'VERA', '1949-04-25', 'Feminino', 'AV.DR.ARMANDO PANNUNZIO'),
(817, 'PAULO', '1947-03-26', 'Masculino', 'AV.DR.ARMANDO PANNUNZIO'),
(818, 'RAIMUNDO', '1980-05-14', 'Masculino', 'R.SV-23 Q.19 L.6'),
(819, 'PAULO', '1978-03-01', 'Masculino', 'R.PROFA ZELIA D. DE C.MAIA'),
(820, 'CREUDIANO', '1979-11-28', 'Masculino', 'QDR 604S.ALAMEDA '),
(821, 'EDUARDO', '1979-01-19', 'Masculino', 'R GENERAL J SCARCELA PORTELA'),
(822, 'RUBIA', '1964-09-02', 'Feminino', 'AV.BELEM Q.10 L.2 N.22 C.2'),
(823, 'MARCIA', '1958-09-17', 'Feminino', 'R. XV DE NOVEMBRO'),
(824, 'ADEIR', '1972-12-03', 'Masculino', 'R.S Q.12 L.21'),
(825, 'RODRIGO', '1966-07-03', 'Masculino', 'RUA PAPA JOaO XXIII'),
(826, 'LUANNY', '1986-01-15', 'Feminino', 'R.R-32 Q.32 L.30'),
(827, 'ANTONIO', '1970-05-19', 'Masculino', 'R. DAS GRUMIXAMAS'),
(828, 'HENRIQUE', '1965-06-21', 'Masculino', 'R.ALEIXO NETO 948/102'),
(829, 'LUIS', '1984-08-20', 'Masculino', 'R.3 Q.C2 L.25 N.256 AP.303'),
(830, 'CLAUDIO', '1971-11-16', 'Masculino', 'R. ALAOR DE QUEIROZ ARAUJO 175/901'),
(831, 'KELLEN', '1978-12-02', 'Feminino', 'R. DAS GRUMIXAMAS'),
(832, 'LUCIANO', '1979-04-06', 'Masculino', 'R.ELOI DE FARIA Q.30 L.14'),
(833, 'CARLOS', '1963-04-02', 'Masculino', 'AV.MICHELINI'),
(834, 'WAGNER', '1980-03-29', 'Masculino', 'R.DAS FLORES'),
(835, 'ELIAS', '1969-09-01', 'Masculino', 'AV.ENG.ATILIO C.LIMA Q.105 L.8 N.473'),
(836, 'FERNANDA', '1985-02-25', 'Feminino', 'R.GAL.MARCONDES SALGADO'),
(837, 'EUDES', '1972-02-03', 'Masculino', 'R.R-9 Q.8 L.10'),
(838, 'ANTONIO', '1961-06-15', 'Masculino', 'R.R-9 Q.8 L.10'),
(839, 'RONALDO', '1967-04-23', 'Masculino', 'R. EWARD JOSEPH'),
(840, 'ANA', '1977-09-19', 'Feminino', 'R. ANTONIO RIBEIRO'),
(841, 'ROGERIO', '1964-12-18', 'Masculino', 'R.BRUNO BECACICI'),
(842, 'MAURO', '1962-07-13', 'Masculino', 'R. KONRAD ADENAWER'),
(843, 'ELIS', '1967-06-23', 'Feminino', 'R. AYRTON SENNA'),
(844, 'JOaO', '1962-09-16', 'Masculino', 'POA CDE BARCELOS DE 385'),
(845, 'LUIZ', '1965-07-27', 'Masculino', 'R.JOaO R. LOUREIRO'),
(846, 'FABIO', '1985-10-29', 'Masculino', 'AV.IPIRANGA'),
(847, 'JOAO', '1976-07-08', 'Masculino', 'R.CANUTO DO VAL'),
(848, 'JORGE', '1965-11-06', 'Masculino', 'AL. FERNAO CARDIM'),
(849, 'ANDRE', '1972-12-26', 'Masculino', 'R.T. DA COSTA.1100/705-B2'),
(850, 'JORGE', '1954-05-29', 'Masculino', 'AV.DR.GUILHERME D.VILLARES'),
(851, 'ARIOVALDO', '1935-02-26', 'Masculino', 'R.LUIS DE FARIA'),
(852, 'MARIA', '1954-07-03', 'Feminino', 'R.FLORENCIO'),
(853, 'MARIANA', '1972-03-26', 'Feminino', 'R.DR ANTONIO L. M.GONZAGA'),
(854, 'PATRICIA', '1976-11-05', 'Feminino', 'R.FIGUEIREDO DE MAGALHAES'),
(855, 'ANDRE', '1965-12-03', 'Masculino', 'ROD.DR.ANTONIO LUIZ M.GONZAGA'),
(856, 'ROGERIO', '1967-03-20', 'Masculino', 'PCA.VITOR GODINHO'),
(857, 'RICARDO', '1968-01-12', 'Masculino', 'AVE PASCHOAL DECRESCENZO'),
(858, 'MOISES', '1951-08-21', 'Masculino', 'R.BARATA RIBEIRO'),
(859, 'AMANDA', '1983-01-30', 'Feminino', 'R.OSWALDO CRUZ'),
(860, 'ETTORE', '1955-10-13', 'Masculino', 'R. VITORIO COSTA'),
(861, 'THIAGO', '1981-10-21', 'Masculino', 'R.JOAO RODRIGUES MACHADO'),
(862, 'PAULO', '1979-04-04', 'Masculino', 'AL. VERONA'),
(863, 'NEWTON', '1956-05-20', 'Masculino', 'R. DA PRATA'),
(864, 'VANER', '1965-03-10', 'Feminino', 'R VICENTE M DOS SANTOS'),
(865, 'MAURICIO', '1970-09-07', 'Masculino', 'R. JOAO RODRIGUES DE SOUZA'),
(866, 'GIOSE', '1981-09-07', 'Feminino', 'R. VENANCIO AYRES'),
(867, 'LUIS', '1956-04-26', 'Masculino', 'R.AMERICO DE MACEDO'),
(868, 'RICARDO', '1972-05-03', 'Masculino', 'R.RAMON H.MARTINI'),
(869, 'LUIZ', '1958-11-23', 'Masculino', 'R.DAS ESMERALDAS'),
(870, 'CESAR', '1948-06-24', 'Masculino', 'R.CANINDE'),
(871, 'INES', '1960-06-07', 'Feminino', 'R.JOSE F.ROMERO'),
(872, 'MARCELO', '1963-03-02', 'Masculino', 'R.JOSE F.ROMERO'),
(873, 'FABIO', '1983-04-29', 'Masculino', 'R. JOAO BADELUCCI'),
(874, 'AMILTON', '1943-08-29', 'Masculino', 'R. GRECIA'),
(875, 'LUIZ', '1946-07-01', 'Masculino', 'R.MAL.ARTHUR PORTELLA'),
(876, 'BIANCA', '1982-03-19', 'Feminino', 'R. AZALEIAS'),
(877, 'JOSE', '1951-04-06', 'Masculino', 'R.PRUDENTE DE MORAIS'),
(878, 'CESAR', '1948-06-24', 'Masculino', 'R.CANINDE'),
(879, 'CARLOS', '1962-05-03', 'Masculino', 'R.COM.CORREIA JUNIOR'),
(880, 'PRYCILA', '1983-06-13', 'Feminino', 'R. PIRASSUNUNGA'),
(881, 'MONICA', '1970-10-10', 'Feminino', 'R. DIOGO JACOME'),
(882, 'PAOLA', '1978-10-27', 'Feminino', 'R.DR JOAO DALMACIO AZEVEDO 200'),
(883, 'EVANDRO', '1972-01-11', 'Masculino', 'R. MIRANDA GUERRA'),
(884, 'DAVINA', '1960-12-06', 'Feminino', 'R.MARCOS PORTUGAL'),
(885, 'LOURENCO', '1954-10-03', 'Masculino', 'R. PIRASSUNUNGA'),
(886, 'BRUNO', '1979-06-16', 'Masculino', 'R.GEN.RENATO PAQUET'),
(887, 'ELISABETHY', '1955-11-24', 'Feminino', 'R. PIRASSUNUNGA'),
(888, 'REINALDO', '1962-09-30', 'Masculino', 'R. ANA RUSSO VESTRI'),
(889, 'DANY', '1970-10-04', 'Masculino', 'R.JOSE LINHARES'),
(890, 'THYAGO', '1985-10-11', 'Masculino', 'R. PIRASSUNUNGA'),
(891, 'MARIA', '1951-10-25', 'Feminino', 'AV. NICOLAU FILIZOLA'),
(892, 'LUIZ', '1970-10-16', 'Masculino', 'AL. MARACATINS'),
(893, 'ALINE', '1985-02-05', 'Feminino', 'R. ALMERIM'),
(894, 'ROGERIO', '1975-03-02', 'Masculino', 'AL.ARAUCARIAS'),
(895, 'MARCELO', '1974-11-15', 'Masculino', 'R. GAL LECOR'),
(896, 'JOAO', '1959-11-22', 'Masculino', 'AL. TASMANIA'),
(897, 'MARISA', '1980-07-26', 'Feminino', 'AV.EMB.ALBEM PIOCH'),
(898, 'SONIA', '1948-04-10', 'Feminino', 'R.PIRAPO'),
(899, 'REGINA', '1947-02-15', 'Feminino', 'R.PEIXOTO GOMIDE'),
(900, 'ANDRIS', '1949-09-17', 'Feminino', 'R.PROF.JOSE H. M.TEIXEIRA'),
(901, 'CEZAR', '1966-06-23', 'Feminino', 'PCA IRMAOS KARMANN'),
(902, 'IVO', '1952-03-21', 'Masculino', 'R.ROBERTO CALDAS KERR'),
(903, 'FABIANA', '1964-04-05', 'Feminino', 'R.SEN.SALGADO FILHO'),
(904, 'MARCOS', '1967-03-13', 'Masculino', 'R.ESPIRITO SANTO'),
(905, 'ROBERTO', '1962-05-08', 'Masculino', 'R.DES. ANTaO DE MORAES'),
(906, 'FABIO', '1975-02-15', 'Masculino', 'R. BALTAZAR LISBOA'),
(907, 'LEONELLA', '1985-01-30', 'Feminino', 'R. JOSE PEREIRA LIBERATO'),
(908, 'VALDEMAR', '1934-03-15', 'Masculino', 'R. DOS MACUNIS'),
(909, 'FABIO', '1971-12-31', 'Masculino', 'R. JOSE MARIA LISBOA'),
(910, 'GLAUCIA', '1949-11-28', 'Masculino', 'R. OSCAR FREIRE'),
(911, 'MARCELO', '1984-04-22', 'Masculino', 'R.CACIONEIRO POPULAR'),
(912, 'LEANDRO', '1975-07-26', 'Masculino', 'AV. MINAS GERAIS'),
(913, 'PAULA', '1962-06-30', 'Feminino', 'R. PRES.  CARLOS LUZ'),
(914, 'LEANDRO', '1980-11-17', 'Masculino', 'R.DR.NOGUEIRA MARTINS'),
(915, 'JOaO', '1926-01-07', 'Masculino', 'AV.ANGELICA'),
(916, 'MARIO', '1954-01-07', 'Masculino', 'R.CACAPAVA'),
(917, 'AURELIO', '1934-03-18', 'Masculino', 'R.VOLUNTARIOS PATRIA'),
(918, 'DANIEL', '1974-12-21', 'Masculino', 'SQSW'),
(919, 'MARIA', '1964-06-05', 'Feminino', 'R. JULIO A. PASQUOTTO'),
(920, 'JEISELAINE', '1981-06-29', 'Feminino', 'R. RIO DAS DANTAS'),
(921, 'SERGIO', '1959-12-28', 'Masculino', 'R. PIAUI'),
(922, 'GETULIO', '1971-07-29', 'Masculino', 'AV.MADRID Q.128 LT.16'),
(923, 'MURILO', '2974-09-20', 'Masculino', 'RUA JOSIAS DA S.LISBOA'),
(924, 'WALTER', '1945-12-28', 'Masculino', 'R.1 Q.B7 L.7775 N.900/901 C/10'),
(925, 'LUCIANO', '1973-02-14', 'Masculino', 'AV.DANTE MICHELINE'),
(926, 'SERGIO', '1969-08-05', 'Masculino', 'R. JULIO A. PASQUOTTO'),
(927, 'UMBERTO', '1978-08-03', 'Masculino', 'R.CONSTANTE SODRE'),
(928, 'BRUNO', '1962-06-30', 'Masculino', 'AL.PATATIVA'),
(929, 'DANILO', '1978-05-03', 'Masculino', 'R.COMEND.ADIBO AIRES'),
(930, 'JOSE', '1963-02-02', 'Masculino', 'R.5 Q.6 L.4'),
(931, 'MARIA', '1946-01-28', 'Feminino', 'R.OTAVIO NEBIAS'),
(932, 'VICTOR', '1977-01-30', 'Masculino', 'R.CHAPOT PRESVOT'),
(933, 'MARIA', '1948-04-26', 'Feminino', 'AV.A'),
(934, 'GERALDO', '1959-10-25', 'Masculino', 'R.30 '),
(935, 'HUDSON', '1971-10-26', 'Masculino', 'R.1012 Q.28 L.9 N.105 C-1'),
(936, 'JOSE', '1967-10-08', 'Masculino', 'R.37 N.163'),
(937, 'CARLO', '1984-04-17', 'Masculino', 'R. ANTONIO R. CAJADO'),
(938, 'TING', '1943-01-13', 'Masculino', 'AV.MORUMBI'),
(939, 'EDOARDO', '1977-06-18', 'Masculino', 'R.OTAVIO NEBIAS'),
(940, 'RODRIGO', '1978-01-30', 'Masculino', 'R. SOUSA BRASIL'),
(941, 'AGNELO', '1980-08-14', 'Masculino', 'R.CEL.MANOEL G.MENDONCA'),
(942, 'WALQUIRIA', '1972-04-09', 'Feminino', 'AV.PRF.JOAO FIUZA'),
(943, 'RUY', '1947-03-03', 'Masculino', 'R. JAQUARETANA'),
(944, 'RAFAEL', '1973-10-25', 'Masculino', 'AV.EPITACIO PESSOA'),
(945, 'MARCIA', '1984-11-21', 'Feminino', 'PORTO DE BEZERRA'),
(946, 'MARIA', '1974-11-29', 'Feminino', 'AV.EPITACIO PESSOA'),
(947, 'ARMANDO', '1960-12-30', 'Masculino', 'R.JOaO ALVARES SOARES'),
(948, 'GUSTAVO', '1968-01-21', 'Masculino', 'R. ORLANDO ZANCANER DEP.'),
(949, 'RENATO', '1972-11-03', 'Masculino', 'R.DOM ARMANDO LOMBARDI'),
(950, 'JURIS', '1967-10-17', 'Masculino', 'AV. NOVE DE JULHO'),
(951, 'EDIMILSON', '1972-12-16', 'Masculino', 'EST. DO SACRAMENTO'),
(952, 'FREDERICO', '1952-04-28', 'Masculino', 'R.SIQUEIRA CAMPOS'),
(953, 'PATRICIA', '1973-07-16', 'Feminino', 'EST. DO SACRAMENTO'),
(954, 'ANTONIO', '1952-10-21', 'Masculino', 'AV.GEN.G.DA FONTOURA'),
(955, 'RENATA', '1963-06-06', 'Feminino', 'PR.DE BOTAFOGO'),
(956, 'SILVIO', '1956-03-14', 'Masculino', 'RUA SILVIO FERRARI'),
(957, 'MARCIA', '1958-02-19', 'Feminino', 'TRAV.NILO PECANHA'),
(958, 'NICOLA', '1948-02-28', 'Masculino', 'R.BARATA RIBEIRO'),
(959, 'EDUARDO', '1941-10-25', 'Masculino', 'R.BISPO DOM JOSE'),
(960, 'CAMILA', '1982-01-06', 'Feminino', 'R. JOSE DA S. RIBEIRO'),
(961, 'DANIEL', '1944-04-06', 'Masculino', 'R.JOSE JACOB'),
(962, 'LADISLAU', '1940-08-13', 'Feminino', 'R. JULIO A. PASQUOTTO'),
(963, 'MAURICIO', '1951-09-07', 'Masculino', 'RUA JEQUITIBA'),
(964, 'JOaO', '1946-03-11', 'Masculino', 'R.PEIXOTO GOMIDE'),
(965, 'MARCUS', '1971-01-17', 'Masculino', 'AV.MAL.MALLET'),
(966, 'LEANDRO', '1985-04-15', 'Masculino', 'RUA VERA L.S.CARVALHO'),
(967, 'CASSIANA', '1972-01-15', 'Feminino', 'R.VISC. DE INHAUMA'),
(968, 'MONICA', '1984-01-14', 'Feminino', 'R.REGENTE LIMA SILVA'),
(969, 'VINICIUS', '1984-02-27', 'Masculino', 'R.MIGUEL COUTO'),
(970, 'CECILIA', '1954-07-30', 'Feminino', 'AL.FERNAO CARDIM'),
(971, 'ELIANA', '1954-02-12', 'Feminino', 'R.AFONSO DE FREITAS'),
(972, 'DANIELA', '1979-05-13', 'Feminino', 'R.PAULA NEY'),
(973, 'DEISI', '1950-08-05', 'Feminino', 'AV.SERNAMBETIBA'),
(974, 'ROBERT', '1963-04-30', 'Masculino', 'AL.CASA BRANCA'),
(975, 'LUIZ', '1951-06-03', 'Masculino', 'AV.SERNAMBETIBA'),
(976, 'MARCOS', '1941-11-29', 'Masculino', 'R.AFONSO DE FREITAS'),
(977, 'MARIANA', '1982-09-19', 'Feminino', 'R.JOSE FERNANDES'),
(978, 'MARIANA', '1982-09-19', 'Feminino', 'R.JOSE FERNANDES'),
(979, 'SHERIDA', '1985-12-07', 'Feminino', 'AV.DIOGENES R.DE LIMA'),
(980, 'BENJAMIN', '1953-02-05', 'Masculino', 'R.BR. DE JAGUARIPE'),
(981, 'JOSE', '1959-08-09', 'Masculino', 'R.DONA BALDUINA.44'),
(982, 'PAULO', '1958-12-20', 'Masculino', 'R.DA CONSOLACaO'),
(983, 'PRISCILLA', '1980-08-03', 'Feminino', 'R.CUPERTINO DURAO'),
(984, 'EUCLENIO', '1978-10-22', 'Masculino', 'RUA  2002  Q.7  L.47'),
(985, 'EWERSON', '1965-11-27', 'Masculino', 'R. NATAL Q.13 L.01/29 NR.321/904'),
(986, 'ANTONIO', '1978-10-09', 'Masculino', 'PCA ROTARY'),
(987, 'PAULA', '1964-02-01', 'Feminino', 'R.MANUEL MARQUES SIMOES'),
(988, 'SANDRA', '1960-08-21', 'Feminino', 'ANTONIO PINCINAT'),
(989, 'EDER', '1985-09-20', 'Masculino', 'R. ABILIO AMERICO'),
(990, 'ELTON', '1971-08-29', 'Masculino', 'R.ENG.JORGE OLIVA'),
(991, 'LUCIANA', '1975-10-27', 'Feminino', 'R.ENG.JORGE OLIVA'),
(992, 'RENATO', '1973-05-05', 'Masculino', 'R.VICTORIO SANTIM'),
(993, 'ELIZABETH', '1976-10-11', 'Feminino', 'R JOAQUIM TAVORA'),
(994, 'SONG', '1948-05-18', 'Feminino', 'R. JOSE GETULIO'),
(995, 'VALNEI', '1952-06-25', 'Feminino', 'R. JOSE GETULIO'),
(996, 'VALNEY', '1975-12-15', 'Masculino', 'AV. BRIG.LUIS ANTONIO'),
(997, 'ELOANA', '1981-02-14', 'Feminino', 'R.S.CAETANO'),
(998, 'JACYRO', '1981-10-07', 'Masculino', 'R.CALIXTO DA MOTA'),
(999, 'KATIA', '1968-05-28', 'Feminino', 'R.DR.PAULO F.C. AGUIAR'),
(1000, 'PALOMA', '1983-01-03', 'Feminino', 'R. ALICE MANHOLER PITERI'),
(1001, 'ERICK', '1976-10-25', 'Masculino', 'R.NASCIMENTO MORAES'),
(1002, 'CARMEN', '1955-11-12', 'Feminino', 'AV. ONZE DE JUNHO'),
(1003, 'ROZELITO', '1965-02-01', 'Masculino', 'R. PRINCIPAL. Z.  RURAL'),
(1004, 'LUIZ', '1952-06-25', 'Masculino', 'AV.ONZE DE JUNHO'),
(1005, 'GUILHERME', '1984-02-09', 'Masculino', 'R.MATEUS GARCIA'),
(1006, 'ARLENE', '1947-09-01', 'Feminino', 'R.TEIXEIRA FREITAS'),
(1007, 'KAROLINA', '1980-11-06', 'Feminino', 'BL AL. 13'),
(1008, 'ANITA', '1961-01-09', 'Feminino', 'R.ROBERTO CALDAS KERR'),
(1009, 'RUY', '1957-02-06', 'Masculino', 'R.ROBERTO CALDAS KERR'),
(1010, 'RODRIGO', '1985-11-13', 'Masculino', 'R.H. MENINI B CIN'),
(1011, 'GIULIANO', '1972-01-27', 'Masculino', 'R.CEL.DOMINGOS TEODORO'),
(1012, 'FERNANDO', '1949-01-31', 'Masculino', 'R.J.H.CORDEIRO'),
(1013, 'FLAVIO', '1961-06-15', 'Masculino', 'R.VICENTE LEPORACE'),
(1014, 'ADRIANO', '1975-02-05', 'Masculino', 'AL. LORENA'),
(1015, 'ADRIANA', '1975-06-18', 'Feminino', 'R.IRACI MANATA'),
(1016, 'ANDRESSA', '1987-12-04', 'Feminino', 'R.LUIZA RODELA BRANDINI'),
(1017, 'CARLOS', '1972-07-23', 'Masculino', 'R.IRACI MANATA'),
(1018, 'RICARDO', '1969-12-14', 'Masculino', 'R.ALBERTO WILLO'),
(1019, 'OCTAVIO', '1943-10-10', 'Masculino', 'R.ALBERTO WILLO'),
(1020, 'ALEXANDRE', '1971-08-05', 'Masculino', 'R. PARACATU'),
(1021, 'PATRICK', '2019-12-30', 'Masculino', 'R. MARIA F B REID'),
(1022, 'LUIZ', '2020-01-16', 'Masculino', 'R B DE JAGUARIPE'),
(1023, 'JOSE', '2020-12-05', 'Masculino', 'RUA DR. AVILA '),
(1024, 'RICARDO', '2020-03-02', 'Masculino', 'AV.L. KING'),
(1025, 'JOSE', '2020-07-03', 'Masculino', 'R D L GUIMARAES'),
(1026, 'CARLOS', '2022-10-02', 'Masculino', 'AV E. PESSOA'),
(1027, 'MONICA', '2022-12-03', 'Masculino', 'R. H. MENINI'),
(1028, 'RENATO', '2021-02-01', 'Masculino', 'R BR. JAGUARIPE'),
(1029, 'ALEXSANDER', '2020-12-04', 'Masculino', 'R.J.DA SILVEIRA'),
(1030, 'IGOR', '2023-09-20', 'Masculino', 'COND.JD.CAMBOATA'),
(1031, 'ANTONIO', '2022-07-13', 'Masculino', 'EST.UNIAO INDUSTRIA'),
(1032, 'FRANCISCO', '2023-01-25', 'Masculino', 'R.AGROLANDIA'),
(1033, 'WALTER', '2023-09-11', 'Masculino', 'R.P. DE MORAIS'),
(1034, 'SERGIO', '2020-11-07', 'Feminino', 'AV. R. BARBOSA'),
(1035, 'ROSALIA', '2022-05-03', 'Feminino', 'AV.RUI BARBOSA'),
(1036, 'CRISTIANO', '2023-08-10', 'Masculino', 'R.RODOLFO ALBINO'),
(1037, 'REGINA', '2022-01-03', 'Feminino', 'R.RODOLFO ALBINO'),
(1038, 'LEONARDO', '2023-04-21', 'Masculino', 'R. MQ. DE SAO  VICENTE'),
(1039, 'PAULO', '2022-10-08', 'Masculino', 'R. J. HIGINO'),
(1040, 'MARCOS', '2021-07-12', 'Masculino', 'R.H.CAVALLEIRO'),
(1041, 'ROSALY', '2023-02-04', 'Feminino', 'AV.V.DE ALBUQUERQUE'),
(1042, 'IVO', '2021-08-07', 'Feminino', 'R. GEN.V.FLORES'),
(1043, 'EUNICE', '2021-05-12', 'Feminino', 'R.BR.DA TORRE'),
(1044, 'JOSE', '2022-07-12', 'Masculino', 'AV. A. FERREIRA'),
(1045, 'VANIA', '2021-10-11', 'Feminino', 'AV. VIEIRA SOUTO'),
(1046, 'ANA', '2021-01-27', 'Masculino', 'PR. DE BOTAFOGO'),
(1047, 'CESAR', '2020-04-29', 'Masculino', 'AV.VIEIRA SOUTO'),
(1048, 'FERNANDO', '2020-03-20', 'Masculino', 'R.SOARES CABRAL'),
(1049, 'EDUARDO', '2022-06-09', 'Masculino', 'PR.DE BOTAFOGO'),
(1050, 'ELIANE', '2022-07-19', 'Feminino', 'R.LEITE LEAL'),
(1051, 'CARLOS', '2021-10-26', 'Masculino', 'R.CNSO.LAFAIETE'),
(1052, 'ELIANE', '2021-02-11', 'Feminino', 'R.LEITE LEAL'),
(1053, 'VANIA', '2020-11-15', 'Feminino', 'AV. VIEIRA SOUTO'),
(1054, 'ANTONIO', '2022-11-13', 'Masculino', 'R. A. STOCKLER'),
(1055, 'MARIA', '2021-09-11', 'Feminino', 'R. A. STOCKLER'),
(1056, 'LAURA', '2021-05-11', 'Feminino', 'AV.ALM.A. ALBERTO'),
(1057, 'GISELE', '2023-08-11', 'Feminino', 'ENG.O.WENCHENK'),
(1058, 'EDESIO', '2023-12-14', 'Masculino', 'R. ENG.WENSCHEN'),
(1059, 'AMARILIO', '2021-04-02', 'Masculino', 'R. BR. DE O. CASTRO'),
(1060, 'SILVEIRA', '2020-06-21', 'Feminino', 'R. BR. DE O. CASTRO'),
(1061, 'RODRYGO', '2022-11-11', 'Masculino', 'R.JOSE LINHARES'),
(1062, 'LUIZ', '2021-10-11', 'Masculino', 'AV.N.S.COPACABANA'),
(1063, 'ALEXANDRE', '2023-12-27', 'Masculino', 'R. DA MARINA'),
(1064, 'ZELIA', '2020-08-01', 'Feminino', 'AV.N.S.COPACABANA'),
(1065, 'ANTONIO', '2021-03-08', 'Masculino', 'R.DOM E. GOMES'),
(1066, 'AMARILIO', '2023-02-14', 'Feminino', 'R. BR. DE O. CASTRO'),
(1067, 'JOAO', '2021-04-07', 'Masculino', 'AV. L.COSTA'),
(1068, 'VANESSA', '2020-04-30', 'Feminino', 'R. JOSE SILVA'),
(1069, 'CARLOS', '2019-10-13', 'Masculino', 'R.VISC. DE CAIRU'),
(1070, 'MONICA', '2024-02-27', 'Feminino', 'AV. G. DE CARVALHO'),
(1071, 'NILDA', '2024-01-02', 'Feminino', 'AV.S.SEBASTIAO'),
(1072, 'FABIO', '2020-10-08', 'Masculino', 'AV.MANTIQUEIRA'),
(1073, 'REGINALDO', '2020-02-18', 'Masculino', 'R. RIO G. DO SUL'),
(1074, 'CLAUDIO', '2021-05-17', 'Masculino', 'R. PROF. A. LOBO'),
(1075, 'RICARDO', '2023-11-01', 'Masculino', 'AV.SERNAMBETIBA'),
(1076, 'VANIA', '2023-12-02', 'Feminino', 'R .H. DE CAMPOS'),
(1077, 'JOSE', '2022-07-14', 'Masculino', 'TV .MANOEL P. LEITE-35'),
(1078, 'VALERIA', '2023-05-21', 'Feminino', 'R. PROF. A. LOBO'),
(1079, 'DENISE', '2022-05-12', 'Feminino', 'R.CARLOS WEBER 1418-AP-192'),
(1080, 'ROBSON', '2020-09-10', 'Masculino', 'R.VIC.A.OLIVEIRA-677'),
(1081, 'MARCIO', '2022-10-20', 'Masculino', 'R. F. OTAVIANO'),
(1082, 'IVAN', '2020-05-20', 'Masculino', 'AV.H.DODSWORTH'),
(1083, 'RICARDO', '2022-11-15', 'Masculino', 'R. EMILIO LANG  JR-87'),
(1084, 'PEDRO', '2023-04-18', 'Masculino', 'R.JOAO LIRA'),
(1085, 'SYLVIA', '2023-02-24', 'Feminino', 'R.JOAO LIRA'),
(1086, 'RAFAEL', '2023-03-05', 'Masculino', 'R.MARIA E.A.DICK'),
(1087, 'AMALIA', '2022-03-06', 'Feminino', 'R.MARIA E.A.DICK'),
(1088, 'REGINALDO', '2022-08-13', 'Masculino', 'AV. COTOVIA-274-134'),
(1089, 'ROGERIO', '2023-10-11', 'Masculino', 'AV.B. DE MEDEIROS'),
(1090, 'ANDREIA', '2021-09-23', 'Feminino', 'R.GAL.SEVERIANO'),
(1091, 'OSMAR', '2022-03-25', 'Masculino', 'R.WENCESLAU BRAZ-44-AP-171'),
(1092, 'ALEXANDRE', '2023-05-21', 'Masculino', 'R.ESPUMAS'),
(1093, 'ANDREIA', '2020-03-13', 'Feminino', 'R. GEN. SEVERIANO'),
(1094, 'ROZADO', '2021-10-24', 'Masculino', 'R. PE.CARVALHO-380-AP-32'),
(1095, 'CARLOS', '2022-05-30', 'Masculino', 'R.DAS ACACIAS'),
(1096, 'RAIMUNDO', '2023-12-22', 'Masculino', 'R.N.HORIZONTE'),
(1097, 'ANA', '2023-10-15', 'Feminino', 'R.M. AMALIA'),
(1098, 'FERNANDO', '2021-06-06', 'Masculino', 'R.GABRIEL STOS-600-AP-121'),
(1099, 'HELDER', '2023-09-20', 'Masculino', 'R.RUI BARBOSA-664'),
(1100, 'ANTONIO', '2020-09-28', 'Masculino', 'R.OLAVO BILAC-242-BL-B-AP-51'),
(1101, 'EZEQUIEL', '2019-10-20', 'Masculino', 'R.ANESIO M. SIQUEIRA-53-'),
(1102, 'CAIO', '2023-05-04', 'Masculino', 'R.TURMALINA-36-'),
(1103, 'WILSON', '2023-05-29', 'Masculino', 'R.ANTONIO CEZARINO-591-AP-92'),
(1104, 'MARIA', '2023-10-03', 'Feminino', 'AV.PAULISTA'),
(1105, 'CLAUDIO', '2023-09-17', 'Masculino', 'VISC.S. FONTES'),
(1106, 'ALEXANDRE', '2023-02-27', 'Masculino', 'R.INDIANA'),
(1107, 'VANDA', '2020-10-07', 'Feminino', 'AL.JAU'),
(1108, 'FLAVIO', '2020-11-22', 'Masculino', 'R.J.R.MARINHO'),
(1109, 'ALESSANDRO', '2024-02-14', 'Masculino', 'R.ABILIO SOARES'),
(1110, 'JOSE', '2022-11-09', 'Masculino', 'R.ABILIO SOARES'),
(1111, 'CLAUDIO', '2021-07-10', 'Masculino', 'R.ILHEUS'),
(1112, 'JOSE', '2021-04-25', 'Masculino', 'R.BR.CAPANEMA DE 281-SP'),
(1113, 'JOSE', '2022-05-27', 'Masculino', 'R.MARIA VIDAL'),
(1114, 'LUIZ', '2022-12-29', 'Masculino', 'R.DINIEPER-59-AP-31'),
(1115, 'EVERTON', '2024-02-26', 'Masculino', 'R.SILVIO ROMERO'),
(1116, 'PAULO', '2022-07-24', 'Masculino', 'CINCO TTE VILLAGE'),
(1117, 'EDISON', '2021-06-17', 'Masculino', 'R.BANDEIRANTES'),
(1118, 'MIRIAM', '2022-01-09', 'Feminino', 'R.MARIO WHATELY'),
(1119, 'WAGNER', '2023-02-23', 'Masculino', 'R.MARIO WHATELY'),
(1120, 'CELESTINO', '2022-12-08', 'Masculino', 'AV.DQ.DE CAXIAS'),
(1121, 'MARIA', '2023-07-24', 'Feminino', 'R.DR.D.FRANCESCHI-2059'),
(1122, 'CLAUDIO', '2023-11-08', 'Masculino', 'AL.NETUNO'),
(1123, 'RAQUEL', '2022-07-03', 'Feminino', 'R.CHAFIC MALUF'),
(1124, 'MARCELO', '2021-08-23', 'Masculino', 'UNIVERSO'),
(1125, 'LUCIENE', '2020-11-17', 'Feminino', 'R.DAS NHANDIROBAS'),
(1126, 'BE', '2022-12-07', 'Masculino', 'R.PE. Joao MANUEL'),
(1127, 'ARTHUR', '2023-11-17', 'Masculino', 'R.PE JOAO MANUEL'),
(1128, 'ANTONIO', '2022-02-25', 'Masculino', 'R. H. DE OLIVEIRA'),
(1129, 'MARCELO', '2022-08-28', 'Masculino', 'UNIVERSO'),
(1130, 'FERNANDO', '2021-05-08', 'Masculino', 'R. M.  BARRETO'),
(1131, 'EDUARDO', '2020-03-07', 'Masculino', 'R.EUCLIDES DA CUNHA'),
(1132, 'ANTONIO', '2022-07-23', 'Feminino', 'R.T. DA COSTA.120/702'),
(1133, 'MARCOS', '2024-01-21', 'Masculino', 'R.PROF. ARTUR RAMOS-213-61-SP'),
(1134, 'DENNIS', '2022-12-28', 'Masculino', 'R.ARMAZEM-27-GUARULHOS-SP'),
(1135, 'FRANCISCO', '2020-01-25', 'Masculino', 'AV.RAUL FURQUIM'),
(1136, 'PAULO', '2022-07-09', 'Masculino', 'R.CAP.FELISBINO DE MORAIS'),
(1137, 'MARIA', '2020-01-06', 'Feminino', 'R.CAP.FELISBINO DE MORAIS'),
(1138, 'BERNARDO', '2020-09-01', 'Masculino', 'R.INGLES DE SOUSA'),
(1139, 'EVANGELINA', '2022-10-20', 'Feminino', 'R. INGLES DE SOUZA'),
(1140, 'LUCIANO', '2019-10-01', 'Masculino', 'R.CAMPOS BICUDO'),
(1141, 'ARLETE', '2022-10-18', 'Feminino', 'R.GUIARA'),
(1142, 'IO', '2022-05-28', 'Masculino', 'AV.HIGIENOPOLIS'),
(1143, 'FRANCISCO', '2022-09-26', 'Masculino', 'R.MIGUEL FRIAS'),
(1144, 'TANIA', '2020-01-13', 'Feminino', 'R.GUSTAVO SAMPAIO'),
(1145, 'PEDRO', '2021-05-16', 'Masculino', 'R.N.RODRIGUES');

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

--
-- Despejando dados para a tabela `DoseReservada`
--

INSERT INTO `DoseReservada` (`DOS_protocoloAgendamento`, `DOS_codigoCidadao`, `DOS_dataAgendamento`, `DOS_codigoVacina`, `DOS_numLote`, `DOS_codigoCentro`) VALUES
(1, 1032, '2023-03-25 12:09:00', 13, '257POLIO2022-01', 1),
(2, 1041, '2023-04-04 12:09:00', 13, '257POLIO2022-01', 1),
(3, 1066, '2023-04-14 09:00:00', 13, '257POLIO2022-01', 1),
(4, 1085, '2023-04-24 09:00:00', 13, '320POLIO2023-04', 2),
(5, 1086, '2023-05-05 09:00:00', 13, '320POLIO2023-04', 2),
(6, 1106, '2023-04-27 09:00:00', 13, '320POLIO2023-04', 2),
(7, 1119, '2023-04-23 09:00:00', 13, '320POLIO2023-04', 2),
(8, 1032, '2023-05-25 09:00:00', 13, '257POLIO2022-01', 1),
(9, 1041, '2023-06-04 09:00:00', 13, '257POLIO2022-01', 1),
(10, 1066, '2023-06-14 09:00:00', 13, '257POLIO2022-01', 1),
(11, 1085, '2023-06-24 09:00:00', 13, '320POLIO2023-04', 2),
(12, 1086, '2023-07-05 09:00:00', 13, '320POLIO2023-04', 2),
(13, 1106, '2023-06-27 09:00:00', 13, '320POLIO2023-04', 2),
(14, 1119, '2023-06-23 09:00:00', 13, '320POLIO2023-04', 2),
(15, 1032, '2023-07-25 09:00:00', 13, '257POLIO2022-01', 1),
(16, 1041, '2023-08-04 09:00:00', 13, '257POLIO2022-01', 1),
(17, 1066, '2023-08-14 09:00:00', 13, '257POLIO2022-01', 1),
(18, 1085, '2023-08-24 09:00:00', 13, '320POLIO2023-04', 2),
(19, 1086, '2023-09-05 09:00:00', 13, '320POLIO2023-04', 2),
(20, 1106, '2023-08-27 09:00:00', 13, '320POLIO2023-04', 2),
(21, 1119, '2023-08-23 09:00:00', 13, '320POLIO2023-04', 2),
(22, 1032, '2024-04-25 09:00:00', 13, '257POLIO2022-01', 1),
(23, 1041, '2024-11-04 09:00:00', 13, '257POLIO2022-01', 1),
(24, 1066, '2024-11-14 09:00:00', 13, '257POLIO2022-01', 1),
(25, 1085, '2024-11-24 09:00:00', 13, '320POLIO2023-04', 2),
(26, 1086, '2024-12-05 09:00:00', 13, '320POLIO2023-04', 2),
(27, 1106, '2024-11-27 09:00:00', 13, '320POLIO2023-04', 2),
(28, 1119, '2024-11-23 09:00:00', 13, '320POLIO2023-04', 2);

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
(7, 'DE5804', 4, '2024-02-11 00:00:00', 1000),
(13, '257POLIO2022-01', 1, '2022-12-28 12:27:46', 100),
(13, '320POLIO2023-04', 2, '2022-12-28 12:27:46', 100);

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
(7, 'DE5804', '2024-01-05', 80),
(13, '257POLIO2022-01', '2022-12-01', 365),
(13, '320POLIO2023-04', '2023-04-01', 365);

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

--
-- Despejando dados para a tabela `HistoricoDoCidadao`
--

INSERT INTO `HistoricoDoCidadao` (`HDC_protocoloAgendamento`, `HDC_codigoCidadao`, `HDC_dataAgendamento`, `HDC_codigoVacina`, `HDC_numLote`, `HDC_codigoCentro`, `HDC_numeroDoRegistro`, `HDC_numeroDeSequencia`) VALUES
(1, 1032, '2023-03-25 12:09:00', 13, '257POLIO2022-01', 1, 1, 1),
(2, 1041, '2023-04-04 12:09:00', 13, '257POLIO2022-01', 1, 2, 1),
(3, 1066, '2023-04-14 09:00:00', 13, '257POLIO2022-01', 1, 3, 1),
(4, 1085, '2023-04-24 09:00:00', 13, '320POLIO2023-04', 2, 4, 1),
(5, 1086, '2023-05-05 09:00:00', 13, '320POLIO2023-04', 2, 5, 1),
(6, 1106, '2023-04-27 09:00:00', 13, '320POLIO2023-04', 2, 6, 1),
(7, 1119, '2023-04-23 09:00:00', 13, '320POLIO2023-04', 2, 7, 1),
(8, 1032, '2023-05-25 09:00:00', 13, '257POLIO2022-01', 1, 8, 2),
(9, 1041, '2023-06-04 09:00:00', 13, '257POLIO2022-01', 1, 9, 2),
(10, 1066, '2023-06-14 09:00:00', 13, '257POLIO2022-01', 1, 10, 2),
(11, 1085, '2023-06-24 09:00:00', 13, '320POLIO2023-04', 2, 11, 2),
(12, 1086, '2023-07-05 09:00:00', 13, '320POLIO2023-04', 2, 12, 2),
(13, 1106, '2023-06-27 09:00:00', 13, '320POLIO2023-04', 2, 13, 2),
(14, 1119, '2023-06-23 09:00:00', 13, '320POLIO2023-04', 2, 14, 2),
(15, 1032, '2023-07-25 09:00:00', 13, '257POLIO2022-01', 1, 15, 3),
(16, 1041, '2023-08-04 09:00:00', 13, '257POLIO2022-01', 1, 16, 3),
(17, 1066, '2023-08-14 09:00:00', 13, '257POLIO2022-01', 1, 17, 3),
(18, 1085, '2023-08-24 09:00:00', 13, '320POLIO2023-04', 2, 18, 3),
(19, 1086, '2023-09-05 09:00:00', 13, '320POLIO2023-04', 2, 19, 3),
(20, 1106, '2023-08-27 09:00:00', 13, '320POLIO2023-04', 2, 20, 3),
(21, 1119, '2023-08-23 09:00:00', 13, '320POLIO2023-04', 2, 21, 3),
(22, 1032, '2024-04-25 09:00:00', 13, '257POLIO2022-01', 1, 22, 4),
(23, 1041, '2024-11-04 09:00:00', 13, '257POLIO2022-01', 1, 23, 4),
(24, 1066, '2024-11-14 09:00:00', 13, '257POLIO2022-01', 1, 24, 4),
(25, 1085, '2024-11-24 09:00:00', 13, '320POLIO2023-04', 2, 25, 4),
(26, 1086, '2024-12-05 09:00:00', 13, '320POLIO2023-04', 2, 26, 4),
(27, 1106, '2024-11-27 09:00:00', 13, '320POLIO2023-04', 2, 27, 4),
(28, 1119, '2024-11-23 09:00:00', 13, '320POLIO2023-04', 2, 28, 4);

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

--
-- Despejando dados para a tabela `RegistroDaAplicacao`
--

INSERT INTO `RegistroDaAplicacao` (`RDA_protocoloAgendamento`, `RDA_codigoCidadao`, `RDA_dataAgendamento`, `RDA_codigoVacina`, `RDA_numLote`, `RDA_codigoCentro`, `numeroDoRegistro`) VALUES
(1, 1032, '2023-03-25 12:09:00', 13, '257POLIO2022-01', 1, 1),
(2, 1041, '2023-04-04 12:09:00', 13, '257POLIO2022-01', 1, 2),
(3, 1066, '2023-04-14 09:00:00', 13, '257POLIO2022-01', 1, 3),
(4, 1085, '2023-04-24 09:00:00', 13, '320POLIO2023-04', 2, 4),
(5, 1086, '2023-05-05 09:00:00', 13, '320POLIO2023-04', 2, 5),
(6, 1106, '2023-04-27 09:00:00', 13, '320POLIO2023-04', 2, 6),
(7, 1119, '2023-04-23 09:00:00', 13, '320POLIO2023-04', 2, 7),
(8, 1032, '2023-05-25 09:00:00', 13, '257POLIO2022-01', 1, 8),
(9, 1041, '2023-06-04 09:00:00', 13, '257POLIO2022-01', 1, 9),
(10, 1066, '2023-06-14 09:00:00', 13, '257POLIO2022-01', 1, 10),
(11, 1085, '2023-06-24 09:00:00', 13, '320POLIO2023-04', 2, 11),
(12, 1086, '2023-07-05 09:00:00', 13, '320POLIO2023-04', 2, 12),
(13, 1106, '2023-06-27 09:00:00', 13, '320POLIO2023-04', 2, 13),
(14, 1119, '2023-06-23 09:00:00', 13, '320POLIO2023-04', 2, 14),
(15, 1032, '2023-07-25 09:00:00', 13, '257POLIO2022-01', 1, 15),
(16, 1041, '2023-08-04 09:00:00', 13, '257POLIO2022-01', 1, 16),
(17, 1066, '2023-08-14 09:00:00', 13, '257POLIO2022-01', 1, 17),
(18, 1085, '2023-08-24 09:00:00', 13, '320POLIO2023-04', 2, 18),
(19, 1086, '2023-09-05 09:00:00', 13, '320POLIO2023-04', 2, 19),
(20, 1106, '2023-08-27 09:00:00', 13, '320POLIO2023-04', 2, 20),
(21, 1119, '2023-08-23 09:00:00', 13, '320POLIO2023-04', 2, 21),
(22, 1032, '2024-04-25 09:00:00', 13, '257POLIO2022-01', 1, 22),
(23, 1041, '2024-11-04 09:00:00', 13, '257POLIO2022-01', 1, 23),
(24, 1066, '2024-11-14 09:00:00', 13, '257POLIO2022-01', 1, 24),
(25, 1085, '2024-11-24 09:00:00', 13, '320POLIO2023-04', 2, 25),
(26, 1086, '2024-12-05 09:00:00', 13, '320POLIO2023-04', 2, 26),
(27, 1106, '2024-11-27 09:00:00', 13, '320POLIO2023-04', 2, 27),
(28, 1119, '2024-11-23 09:00:00', 13, '320POLIO2023-04', 2, 28);

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
(8, 'Quantidade Entre Doses Máximo - Outra Vacina', '0', ''),
(9, 'Reforço Pólio', '15 meses', NULL);

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
(10, 'Sarampo', 'Farm4', 60, 1000, 'gotas', 1, '0,1ml'),
(11, 'BCG – ID', 'FARM1', 12, 1000, 'Injetável', 1, '0,1 ml'),
(12, 'Vacina contra hepatite B', 'FARM2', 12, 1000, 'Injetável', 3, '0,1 ml'),
(13, 'VOP (vacina oral contra pólio)', 'FARM2', 12, 1000, 'Oral', 4, '0,05 ml'),
(14, 'VORH (Vacina Oral de Rotavírus Humano)', 'FARM2', 12, 1000, 'Oral', 2, '0,05 ml');

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
(7, 2, '90', NULL, 1),
(13, 2, '60', NULL, 1),
(13, 9, '15 meses', NULL, 1);

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
  MODIFY `Protocolo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT de tabela `CentroVacinacao`
--
ALTER TABLE `CentroVacinacao`
  MODIFY `CodigoCentro` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `Cidadao`
--
ALTER TABLE `Cidadao`
  MODIFY `codigoCidadao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1146;

--
-- AUTO_INCREMENT de tabela `RegistroDaAplicacao`
--
ALTER TABLE `RegistroDaAplicacao`
  MODIFY `numeroDoRegistro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `RegrasDeAplicacao`
--
ALTER TABLE `RegrasDeAplicacao`
  MODIFY `codigoRegra` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `Vacina`
--
ALTER TABLE `Vacina`
  MODIFY `codigoVacina` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- Restrições para tabelas `HistoricoDoCidadao`
--
ALTER TABLE `HistoricoDoCidadao`
  ADD CONSTRAINT `FK_Primarias-AGN-RDA-HDC` FOREIGN KEY (`HDC_protocoloAgendamento`,`HDC_codigoCidadao`,`HDC_dataAgendamento`) REFERENCES `RegistroDaAplicacao` (`RDA_protocoloAgendamento`, `RDA_codigoCidadao`, `RDA_dataAgendamento`),
  ADD CONSTRAINT `FK_Primarias-EMP-RDA-HDC` FOREIGN KEY (`HDC_codigoVacina`,`HDC_numLote`,`HDC_codigoCentro`) REFERENCES `RegistroDaAplicacao` (`RDA_codigoVacina`, `RDA_numLote`, `RDA_codigoCentro`);

--
-- Restrições para tabelas `RegistroDaAplicacao`
--
ALTER TABLE `RegistroDaAplicacao`
  ADD CONSTRAINT `FK_Primarias-AGN-RDA` FOREIGN KEY (`RDA_protocoloAgendamento`,`RDA_codigoCidadao`,`RDA_dataAgendamento`) REFERENCES `DoseReservada` (`DOS_protocoloAgendamento`, `DOS_codigoCidadao`, `DOS_dataAgendamento`),
  ADD CONSTRAINT `FK_Primarias-EMP-RDA` FOREIGN KEY (`RDA_codigoVacina`,`RDA_numLote`,`RDA_codigoCentro`) REFERENCES `DoseReservada` (`DOS_codigoVacina`, `DOS_numLote`, `DOS_codigoCentro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
