SELECT codigoCidadao as cod,dataNascimento as nasc FROM `Agenda` RIGHT JOIN Cidadao ON AGN_codigoCidadao=codigoCidadao WHERE `AGN_codigoCidadao` IS null AND dataNascimento BETWEEN '2022-01-01' AND '2024-12-31';

SELECT codigoCidadao as cod,QUOTE(dataNascimento) as nasc, QUOTE(INTERVAL 60 DAY + dataNascimento) as dose1 FROM `Agenda` RIGHT JOIN Cidadao ON AGN_codigoCidadao=codigoCidadao WHERE `AGN_codigoCidadao` IS null AND dataNascimento BETWEEN '2022-01-01' AND '2024-12-31';


Insert INTO Agenda (`AGN_codigoCidadao`,`dataAgendamento`) SELECT codigoCidadao,(INTERVAL 60 DAY + dataNascimento) FROM `Agenda` RIGHT JOIN Cidadao ON AGN_codigoCidadao=codigoCidadao WHERE `AGN_codigoCidadao` IS null AND dataNascimento BETWEEN '2022-01-01' AND '2024-12-31';

DROP TRIGGER IF EXISTS `Decrementa_Estoque`;CREATE DEFINER=`root`@`localhost` TRIGGER `Decrementa_Estoque` AFTER INSERT ON `Empenho` FOR EACH ROW UPDATE Estoque SET emEstoque=0 where numLote = NEW.EMP_numLote

DROP TRIGGER IF EXISTS `Decrementa_Empenho`;CREATE DEFINER=`root`@`localhost` TRIGGER `Decrementa_Empenho` AFTER INSERT ON `DoseReservada` FOR EACH ROW UPDATE Empenho SET quantidade=quantidade - 1 where EMP_numLote = NEW.DOS_numLote;

DROP TRIGGER IF EXISTS `VerificaDataEmpenho`;CREATE DEFINER=`root`@`localhost` TRIGGER `Decrementa_Empenho` BEFORE INSERT ON `DoseReservada` FOR EACH ROW UPDATE Empenho SET quantidade=quantidade - 1 where EMP_numLote = NEW.DOS_numLote;

INSERT INTO `Empenho` (`EMP_codigoVacina`, `EMP_numLote`, `EMP_codigoCentro`, `dataCompletaEmpenho`, `quantidade`) VALUES ('13', 'loteNovo', '1', '2024-09-13 21:49:09.000000', AtualizaQuantPorLote(13))

CREATE DEFINER=`root`@`localhost` FUNCTION `AtualizaQuantPorLote`(`codVacina` INT UNSIGNED) RETURNS SMALLINT(6) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER RETURN (SELECT quantidadePorLote FROM Vacina WHERE Vacina.codigoVacina = codVacina)

CREATE DEFINER=`root`@`localhost` FUNCTION `InsereUltimoNumSeq`(`codCidadao` INT UNSIGNED) RETURNS SMALLINT(6) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER RETURN (SELECT IFNULL(MAX(HDC_numeroDeSequencia)+1,1) FROM HistoricoDoCidadao WHERE HDC_codigoCidadao = codCidadao)

INSERT INTO `DoseReservada`(`DOS_protocoloAgendamento`, `DOS_codigoCidadao`, `DOS_dataAgendada`, `DOS_codigoVacina`, `DOS_numLote`, `DOS_codigoCentro`) 
VALUES
(
    SELECT Protocolo,AGN_codigoCidadao,dataAgendada
    FROM `Agenda` LEFT JOIN DoseReservada ON `Protocolo`=DOS_ProtocoloAgendamento 
 WHERE DOS_ProtocoloAgendamento IS NULL ORDER BY `Protocolo` ASC LIMIT 29
)
,
(SELECT `EMP_codigoVacina`, `EMP_numLote`, `EMP_codigoCentro`FROM `Empenho` WHERE `EMP_codigoCentro` =1)

SELECT * FROM `Agenda` LEFT OUTER JOIN DoseReservada ON `Protocolo`=`DOS_protocoloAgendamento` WHERE `DOS_protocoloAgendamento` IS NULL;

29,1026,2022-12-01 00:00:00
30,1027,2023-02-01 00:00:00
31,1030,2023-11-19 00:00:00
32,1031,2022-09-11 00:00:00
33,1033,2023-11-10 00:00:00
34,1035,2022-07-02 00:00:00
35,1036,2023-10-09 00:00:00
36,1037,2022-03-04 00:00:00
37,1038,2023-06-20 00:00:00
38,1039,2022-12-07 00:00:00
39,1044,2022-09-10 00:00:00
40,1049,2022-08-08 00:00:00
41,1050,2022-09-17 00:00:00
42,1054,2023-01-12 00:00:00
43,1057,2023-10-10 00:00:00
44,1058,2024-02-12 00:00:00
45,1061,2023-01-10 00:00:00
46,1063,2024-02-25 00:00:00
47,1070,2024-04-27 00:00:00
48,1071,2024-03-02 00:00:00
49,1075,2023-12-31 00:00:00
50,1076,2024-01-31 00:00:00
51,1077,2022-09-12 00:00:00
52,1078,2023-07-20 00:00:00
53,1079,2022-07-11 00:00:00

localhost/Vacinado2/Agenda/		http://127.0.0.1/phpMyAdmin/index.php?route=/table/sql&db=Vacinado2&table=Agenda

   Mostrando registros 0 - 28 (29 no total, Consulta levou 0.0007 segundos.)


SELECT Protocolo,AGN_codigoCidadao,dataAgendada,`EMP_codigoVacina`, `EMP_numLote`, `EMP_codigoCentro` FROM (SELECT Protocolo,AGN_codigoCidadao,dataAgendada FROM `Agenda` LEFT JOIN DoseReservada ON `Protocolo`=DOS_ProtocoloAgendamento WHERE DOS_ProtocoloAgendamento IS NULL ORDER BY `Protocolo` ASC LIMIT 29) as a, (SELECT `EMP_codigoVacina`, `EMP_numLote`, `EMP_codigoCentro`FROM `Empenho` WHERE `EMP_codigoCentro` =1 AND EMP_numLote='loteNovo') as b;


(29,1026,'2022-12-01 00:00:00',13,'loteNovo',1),
(30,1027,'2023-02-01 00:00:00',13,'loteNovo',1),
(31,1030,'2023-11-19 00:00:00',13,'loteNovo',1),
(32,1031,'2022-09-11 00:00:00',13,'loteNovo',1),
(33,1033,'2023-11-10 00:00:00',13,'loteNovo',1),
(34,1035,'2022-07-02 00:00:00',13,'loteNovo',1),
(35,1036,'2023-10-09 00:00:00',13,'loteNovo',1),
(36,1037,'2022-03-04 00:00:00',13,'loteNovo',1),
(37,1038,'2023-06-20 00:00:00',13,'loteNovo',1),
(38,1039,'2022-12-07 00:00:00',13,'loteNovo',1),
(39,1044,'2022-09-10 00:00:00',13,'loteNovo',1),
(40,1049,'2022-08-08 00:00:00',13,'loteNovo',1),
(41,1050,'2022-09-17 00:00:00',13,'loteNovo',1),
(42,1054,'2023-01-12 00:00:00',13,'loteNovo',1),
(43,1057,'2023-10-10 00:00:00',13,'loteNovo',1),
(44,1058,'2024-02-12 00:00:00',13,'loteNovo',1),
(45,1061,'2023-01-10 00:00:00',13,'loteNovo',1),
(46,1063,'2024-02-25 00:00:00',13,'loteNovo',1),
(47,1070,'2024-04-27 00:00:00',13,'loteNovo',1),
(48,1071,'2024-03-02 00:00:00',13,'loteNovo',1),
(49,1075,'2023-12-31 00:00:00',13,'loteNovo',1),
(50,1076,'2024-01-31 00:00:00',13,'loteNovo',1),
(51,1077,'2022-09-12 00:00:00',13,'loteNovo',1),
(52,1078,'2023-07-20 00:00:00',13,'loteNovo',1),
(53,1079,'2022-07-11 00:00:00',13,'loteNovo',1),
(54,1081,'2022-12-19 00:00:00',13,'loteNovo',1),
(55,1083,'2023-01-14 00:00:00',13,'loteNovo',1),
(56,1084,'2023-06-17 00:00:00',13,'loteNovo',1),
(57,1087,'2022-05-05 00:00:00',13,'loteNovo',1)


SELECT Protocolo,AGN_codigoCidadao,dataAgendada,`EMP_codigoVacina`, `EMP_numLote`, `EMP_codigoCentro` FROM (SELECT Protocolo,AGN_codigoCidadao,dataAgendada FROM `Agenda` LEFT JOIN DoseReservada ON `Protocolo`=DOS_ProtocoloAgendamento WHERE DOS_ProtocoloAgendamento IS NULL ORDER BY `Protocolo` ASC OFFSET 29 ROWS) as a, (SELECT `EMP_codigoVacina`, `EMP_numLote`, `EMP_codigoCentro`FROM `Empenho` WHERE `EMP_codigoCentro` =1 AND EMP_numLote='loteNovo') as b;


(58,1088,'2022-10-12 00:00:00',13,'loteNovo',1),
(59,1089,'2023-12-10 00:00:00',13,'loteNovo',1),
(60,1091,'2022-05-24 00:00:00',13,'loteNovo',1),
(61,1092,'2023-07-20 00:00:00',13,'loteNovo',1),
(62,1095,'2022-07-29 00:00:00',13,'loteNovo',1),
(63,1096,'2024-02-20 00:00:00',13,'loteNovo',1),
(64,1097,'2023-12-14 00:00:00',13,'loteNovo',1),
(65,1099,'2023-11-19 00:00:00',13,'loteNovo',1),
(66,1102,'2023-07-03 00:00:00',13,'loteNovo',1),
(67,1103,'2023-07-28 00:00:00',13,'loteNovo',1),
(68,1104,'2023-12-02 00:00:00',13,'loteNovo',1),
(69,1105,'2023-11-16 00:00:00',13,'loteNovo',1),
(70,1109,'2024-04-14 00:00:00',13,'loteNovo',1),
(71,1110,'2023-01-08 00:00:00',13,'loteNovo',1),
(72,1113,'2022-07-26 00:00:00',13,'loteNovo',1),
(73,1114,'2023-02-27 00:00:00',13,'loteNovo',1),
(74,1115,'2024-04-26 00:00:00',13,'loteNovo',1),
(75,1116,'2022-09-22 00:00:00',13,'loteNovo',1),
(76,1118,'2022-03-10 00:00:00',13,'loteNovo',1),
(77,1120,'2023-02-06 00:00:00',13,'loteNovo',1),
(78,1121,'2023-09-22 00:00:00',13,'loteNovo',1),
(79,1122,'2024-01-07 00:00:00',13,'loteNovo',1),
(80,1123,'2022-09-01 00:00:00',13,'loteNovo',1),
(81,1126,'2023-02-05 00:00:00',13,'loteNovo',1),
(82,1127,'2024-01-16 00:00:00',13,'loteNovo',1),
(83,1128,'2022-04-26 00:00:00',13,'loteNovo',1),
(84,1129,'2022-10-27 00:00:00',13,'loteNovo',1),
(85,1132,'2022-09-21 00:00:00',13,'loteNovo',1),
(86,1133,'2024-03-21 00:00:00',13,'loteNovo',1),
(87,1134,'2023-02-26 00:00:00',13,'loteNovo',1),
(88,1136,'2022-09-07 00:00:00',13,'loteNovo',1),
(89,1139,'2022-12-19 00:00:00',13,'loteNovo',1),
(90,1141,'2022-12-17 00:00:00',13,'loteNovo',1),
(91,1142,'2022-07-27 00:00:00',13,'loteNovo',1),
(92,1143,'2022-11-25 00:00:00',13,'loteNovo',1)

localhost/Vacinado2/DoseReservada/		http://127.0.0.1/phpMyAdmin/index.php?route=/sql&db=Vacinado2&table=DoseReservada&pos=0

   Mostrando registros 0 - 91 (92 no total, Consulta levou 0.0004 segundos.)


SELECT * FROM `DoseReservada`


DOS_protocoloAgendamento	DOS_codigoCidadao	DOS_dataAgendada	DOS_codigoVacina	DOS_numLote	DOS_codigoCentro
(1,1032,'2023-03-25 12:09:00',13,'257POLIO2022-01',1),
(2,1041,'2023-04-04 12:09:00',13,'257POLIO2022-01',1),
(3,1066,'2023-04-14 09:00:00',13,'257POLIO2022-01',1),
(4,1085,'2023-04-24 09:00:00',13,'320POLIO2023-04',2),
(5,1086,'2023-05-05 09:00:00',13,'320POLIO2023-04',2),
(6,1106,'2023-04-27 09:00:00',13,'320POLIO2023-04',2),
(7,1119,'2023-04-23 09:00:00',13,'320POLIO2023-04',2),
(8,1032,'2023-05-25 09:00:00',13,'257POLIO2022-01',1),
(9,1041,'2023-06-04 09:00:00',13,'257POLIO2022-01',1),
(10,1066,'2023-06-14 09:00:00',13,'257POLIO2022-01',1),
(11,1085,'2023-06-24 09:00:00',13,'320POLIO2023-04',2),
(12,1086,'2023-07-05 09:00:00',13,'320POLIO2023-04',2),
(13,1106,'2023-06-27 09:00:00',13,'320POLIO2023-04',2),
(14,1119,'2023-06-23 09:00:00',13,'320POLIO2023-04',2),
(15,1032,'2023-07-25 09:00:00',13,'257POLIO2022-01',1),
(16,1041,'2023-08-04 09:00:00',13,'257POLIO2022-01',1),
(17,1066,'2023-08-14 09:00:00',13,'257POLIO2022-01',1),
(18,1085,'2023-08-24 09:00:00',13,'320POLIO2023-04',2),
(19,1086,'2023-09-05 09:00:00',13,'320POLIO2023-04',2),
(20,1106,'2023-08-27 09:00:00',13,'320POLIO2023-04',2),
(21,1119,'2023-08-23 09:00:00',13,'320POLIO2023-04',2),
(22,1032,'2024-04-25 09:00:00',13,'257POLIO2022-01',1),
(23,1041,'2024-11-04 09:00:00',13,'257POLIO2022-01',1),
(24,1066,'2024-11-14 09:00:00',13,'257POLIO2022-01',1),
(25,1085,'2024-11-24 09:00:00',13,'320POLIO2023-04',2),
(26,1086,'2024-12-05 09:00:00',13,'320POLIO2023-04',2),
(27,1106,'2024-11-27 09:00:00',13,'320POLIO2023-04',2),
(28,1119,'2024-11-23 09:00:00',13,'320POLIO2023-04',2),
(29,1026,'2022-12-01 00:00:00',13,'loteNovo',1),
(30,1027,'2023-02-01 00:00:00',13,'loteNovo',1),
(31,1030,'2023-11-19 00:00:00',13,'loteNovo',1),
(32,1031,'2022-09-11 00:00:00',13,'loteNovo',1),
(33,1033,'2023-11-10 00:00:00',13,'loteNovo',1),
(34,1035,'2022-07-02 00:00:00',13,'loteNovo',1),
(35,1036,'2023-10-09 00:00:00',13,'loteNovo',1),
(36,1037,'2022-03-04 00:00:00',13,'loteNovo',1),
(37,1038,'2023-06-20 00:00:00',13,'loteNovo',1),
(38,1039,'2022-12-07 00:00:00',13,'loteNovo',1),
(39,1044,'2022-09-10 00:00:00',13,'loteNovo',1),
(40,1049,'2022-08-08 00:00:00',13,'loteNovo',1),
(41,1050,'2022-09-17 00:00:00',13,'loteNovo',1),
(42,1054,'2023-01-12 00:00:00',13,'loteNovo',1),
(43,1057,'2023-10-10 00:00:00',13,'loteNovo',1),
(44,1058,'2024-02-12 00:00:00',13,'loteNovo',1),
(45,1061,'2023-01-10 00:00:00',13,'loteNovo',1),
(46,1063,'2024-02-25 00:00:00',13,'loteNovo',1),
(47,1070,'2024-04-27 00:00:00',13,'loteNovo',1),
(48,1071,'2024-03-02 00:00:00',13,'loteNovo',1),
(49,1075,'2023-12-31 00:00:00',13,'loteNovo',1),
(50,1076,'2024-01-31 00:00:00',13,'loteNovo',1),
(51,1077,'2022-09-12 00:00:00',13,'loteNovo',1),
(52,1078,'2023-07-20 00:00:00',13,'loteNovo',1),
(53,1079,'2022-07-11 00:00:00',13,'loteNovo',1),
(54,1081,'2022-12-19 00:00:00',13,'loteNovo',1),
(55,1083,'2023-01-14 00:00:00',13,'loteNovo',1),
(56,1084,'2023-06-17 00:00:00',13,'loteNovo',1),
(57,1087,'2022-05-05 00:00:00',13,'loteNovo',1),
(58,1088,'2022-10-12 00:00:00',13,'loteNovo',1),
(59,1089,'2023-12-10 00:00:00',13,'loteNovo',1),
(60,1091,'2022-05-24 00:00:00',13,'loteNovo',1),
(61,1092,'2023-07-20 00:00:00',13,'loteNovo',1),
(62,1095,'2022-07-29 00:00:00',13,'loteNovo',1),
(63,1096,'2024-02-20 00:00:00',13,'loteNovo',1),
(64,1097,'2023-12-14 00:00:00',13,'loteNovo',1),
(65,1099,'2023-11-19 00:00:00',13,'loteNovo',1),
(66,1102,'2023-07-03 00:00:00',13,'loteNovo',1),
(67,1103,'2023-07-28 00:00:00',13,'loteNovo',1),
(68,1104,'2023-12-02 00:00:00',13,'loteNovo',1),
(69,1105,'2023-11-16 00:00:00',13,'loteNovo',1),
(70,1109,'2024-04-14 00:00:00',13,'loteNovo',1),
(71,1110,'2023-01-08 00:00:00',13,'loteNovo',1),
(72,1113,'2022-07-26 00:00:00',13,'loteNovo',1),
(73,1114,'2023-02-27 00:00:00',13,'loteNovo',1),
(74,1115,'2024-04-26 00:00:00',13,'loteNovo',1),
(75,1116,'2022-09-22 00:00:00',13,'loteNovo',1),
(76,1118,'2022-03-10 00:00:00',13,'loteNovo',1),
(77,1120,'2023-02-06 00:00:00',13,'loteNovo',1),
(78,1121,'2023-09-22 00:00:00',13,'loteNovo',1),
(79,1122,'2024-01-07 00:00:00',13,'loteNovo',1),
(80,1123,'2022-09-01 00:00:00',13,'loteNovo',1),
(81,1126,'2023-02-05 00:00:00',13,'loteNovo',1),
(82,1127,'2024-01-16 00:00:00',13,'loteNovo',1),
(83,1128,'2022-04-26 00:00:00',13,'loteNovo',1),
(84,1129,'2022-10-27 00:00:00',13,'loteNovo',1),
(85,1132,'2022-09-21 00:00:00',13,'loteNovo',1),
(86,1133,'2024-03-21 00:00:00',13,'loteNovo',1),
(87,1134,'2023-02-26 00:00:00',13,'loteNovo',1),
(88,1136,'2022-09-07 00:00:00',13,'loteNovo',1),
(89,1139,'2022-12-19 00:00:00',13,'loteNovo',1),
(90,1141,'2022-12-17 00:00:00',13,'loteNovo',1),
(91,1142,'2022-07-27 00:00:00',13,'loteNovo',1),
(92,1143,'2022-11-25 00:00:00',13,'loteNovo',1)

Randomizado
(47,1070,'2024-04-27 00:00:00',13,'loteNovo',1),
(45,1061,'2023-01-10 00:00:00',13,'loteNovo',1),
(10,1066,'2023-06-14 09:00:00',13,'257POLIO2022-01',1),
(14,1119,'2023-06-23 09:00:00',13,'320POLIO2023-04',2),
(5,1086,'2023-05-05 09:00:00',13,'320POLIO2023-04',2),
(9,1041,'2023-06-04 09:00:00',13,'257POLIO2022-01',1),
(48,1071,'2024-03-02 00:00:00',13,'loteNovo',1),
(1,1032,'2023-03-25 12:09:00',13,'257POLIO2022-01',1),
(21,1119,'2023-08-23 09:00:00',13,'320POLIO2023-04',2),
(7,1119,'2023-04-23 09:00:00',13,'320POLIO2023-04',2),
(50,1076,'2024-01-31 00:00:00',13,'loteNovo',1),
(37,1038,'2023-06-20 00:00:00',13,'loteNovo',1),
(18,1085,'2023-08-24 09:00:00',13,'320POLIO2023-04',2),
(29,1026,'2022-12-01 00:00:00',13,'loteNovo',1),
(38,1039,'2022-12-07 00:00:00',13,'loteNovo',1),
(8,1032,'2023-05-25 09:00:00',13,'257POLIO2022-01',1),
(92,1143,'2022-11-25 00:00:00',13,'loteNovo',1)
(41,1050,'2022-09-17 00:00:00',13,'loteNovo',1),
(32,1031,'2022-09-11 00:00:00',13,'loteNovo',1),
(22,1032,'2024-04-25 09:00:00',13,'257POLIO2022-01',1),
(49,1075,'2023-12-31 00:00:00',13,'loteNovo',1),
(30,1027,'2023-02-01 00:00:00',13,'loteNovo',1),
(23,1041,'2024-11-04 09:00:00',13,'257POLIO2022-01',1),
(34,1035,'2022-07-02 00:00:00',13,'loteNovo',1),
(31,1030,'2023-11-19 00:00:00',13,'loteNovo',1),
(11,1085,'2023-06-24 09:00:00',13,'320POLIO2023-04',2),
(39,1044,'2022-09-10 00:00:00',13,'loteNovo',1),
(33,1033,'2023-11-10 00:00:00',13,'loteNovo',1),-- foi até aqui, incluído
(12,1086,'2023-07-05 09:00:00',13,'320POLIO2023-04',2),
(43,1057,'2023-10-10 00:00:00',13,'loteNovo',1),
(4,1085,'2023-04-24 09:00:00',13,'320POLIO2023-04',2),
(6,1106,'2023-04-27 09:00:00',13,'320POLIO2023-04',2),
(13,1106,'2023-06-27 09:00:00',13,'320POLIO2023-04',2),
(36,1037,'2022-03-04 00:00:00',13,'loteNovo',1),
(27,1106,'2024-11-27 09:00:00',13,'320POLIO2023-04',2),
(44,1058,'2024-02-12 00:00:00',13,'loteNovo',1),
(26,1086,'2024-12-05 09:00:00',13,'320POLIO2023-04',2),
(20,1106,'2023-08-27 09:00:00',13,'320POLIO2023-04',2),
(3,1066,'2023-04-14 09:00:00',13,'257POLIO2022-01',1),
(19,1086,'2023-09-05 09:00:00',13,'320POLIO2023-04',2),
(40,1049,'2022-08-08 00:00:00',13,'loteNovo',1),
(16,1041,'2023-08-04 09:00:00',13,'257POLIO2022-01',1),
(46,1063,'2024-02-25 00:00:00',13,'loteNovo',1),
(2,1041,'2023-04-04 12:09:00',13,'257POLIO2022-01',1),
(17,1066,'2023-08-14 09:00:00',13,'257POLIO2022-01',1),
(42,1054,'2023-01-12 00:00:00',13,'loteNovo',1),
(25,1085,'2024-11-24 09:00:00',13,'320POLIO2023-04',2),
(35,1036,'2023-10-09 00:00:00',13,'loteNovo',1),
(24,1066,'2024-11-14 09:00:00',13,'257POLIO2022-01',1),
(28,1119,'2024-11-23 09:00:00',13,'320POLIO2023-04',2),
(15,1032,'2023-07-25 09:00:00',13,'257POLIO2022-01',1),

   Mostrando registros 0 - 43 (44 no total, Consulta levou 0.0003 segundos.)
SELECT * FROM `RegistroDaAplicacao`

RDA_protocoloAgendamento	RDA_codigoCidadao	RDA_dataAgendada	RDA_codigoVacina	RDA_numLote	RDA_codigoCentro	numeroDoRegistro
(47,1070,'2024-04-27 00:00:00',13,'loteNovo',1,1,InsereUltimoNumSeq()),
(45,1061,'2023-01-10 00:00:00',13,'loteNovo',1,2,InsereUltimoNumSeq()),
(10,1066,'2023-06-14 09:00:00',13,'257POLIO2022-01',1,3,InsereUltimoNumSeq()),
(14,1119,'2023-06-23 09:00:00',13,'320POLIO2023-04',2,4,InsereUltimoNumSeq()),
(5,1086,'2023-05-05 09:00:00',13,'320POLIO2023-04',2,5,InsereUltimoNumSeq()),
(9,1041,'2023-06-04 09:00:00',13,'257POLIO2022-01',1,6,InsereUltimoNumSeq()),
(48,1071,'2024-03-02 00:00:00',13,'loteNovo',1,7,InsereUltimoNumSeq()),
(1,1032,'2023-03-25 12:09:00',13,'257POLIO2022-01',1,8,InsereUltimoNumSeq()),
(21,1119,'2023-08-23 09:00:00',13,'320POLIO2023-04',2,9,InsereUltimoNumSeq()),
(7,1119,'2023-04-23 09:00:00',13,'320POLIO2023-04',2,10,InsereUltimoNumSeq()),
(50,1076,'2024-01-31 00:00:00',13,'loteNovo',1,11,InsereUltimoNumSeq()),
(37,1038,'2023-06-20 00:00:00',13,'loteNovo',1,12,InsereUltimoNumSeq()),
(18,1085,'2023-08-24 09:00:00',13,'320POLIO2023-04',2,13,InsereUltimoNumSeq()),
(29,1026,'2022-12-01 00:00:00',13,'loteNovo',1,14,InsereUltimoNumSeq()),
(38,1039,'2022-12-07 00:00:00',13,'loteNovo',1,15,InsereUltimoNumSeq()),
(8,1032,'2023-05-25 09:00:00',13,'257POLIO2022-01',1,16,InsereUltimoNumSeq()),
(92,1143,'2022-11-25 00:00:00',13,'loteNovo',1,17,InsereUltimoNumSeq()),
(41,1050,'2022-09-17 00:00:00',13,'loteNovo',1,18,InsereUltimoNumSeq()),
(32,1031,'2022-09-11 00:00:00',13,'loteNovo',1,19,InsereUltimoNumSeq()),
(22,1032,'2024-04-25 09:00:00',13,'257POLIO2022-01',1,20,InsereUltimoNumSeq()),
(49,1075,'2023-12-31 00:00:00',13,'loteNovo',1,21,InsereUltimoNumSeq()),
(30,1027,'2023-02-01 00:00:00',13,'loteNovo',1,22,InsereUltimoNumSeq()),
(23,1041,'2024-11-04 09:00:00',13,'257POLIO2022-01',1,23,InsereUltimoNumSeq()),
(34,1035,'2022-07-02 00:00:00',13,'loteNovo',1,24,InsereUltimoNumSeq()),
(31,1030,'2023-11-19 00:00:00',13,'loteNovo',1,25,InsereUltimoNumSeq()),
(11,1085,'2023-06-24 09:00:00',13,'320POLIO2023-04',2,26,InsereUltimoNumSeq()),
(39,1044,'2022-09-10 00:00:00',13,'loteNovo',1,27,InsereUltimoNumSeq()),
(33,1033,'2023-11-10 00:00:00',13,'loteNovo',1,28,InsereUltimoNumSeq()),
(17,1066,'2023-08-14 09:00:00',13,'257POLIO2022-01',1,29,InsereUltimoNumSeq()),
(19,1086,'2023-09-05 09:00:00',13,'320POLIO2023-04',2,30,InsereUltimoNumSeq()),
(42,1054,'2023-01-12 00:00:00',13,'loteNovo',1,31,InsereUltimoNumSeq()),
(43,1057,'2023-10-10 00:00:00',13,'loteNovo',1,32,InsereUltimoNumSeq()),
(24,1066,'2024-11-14 09:00:00',13,'257POLIO2022-01',1,33,InsereUltimoNumSeq()),
(16,1041,'2023-08-04 09:00:00',13,'257POLIO2022-01',1,34,InsereUltimoNumSeq()),
(2,1041,'2023-04-04 12:09:00',13,'257POLIO2022-01',1,35,InsereUltimoNumSeq()),
(36,1037,'2022-03-04 00:00:00',13,'loteNovo',1,36,InsereUltimoNumSeq()),
(6,1106,'2023-04-27 09:00:00',13,'320POLIO2023-04',2,37,InsereUltimoNumSeq()),
(25,1085,'2024-11-24 09:00:00',13,'320POLIO2023-04',2,38,InsereUltimoNumSeq()),
(3,1066,'2023-04-14 09:00:00',13,'257POLIO2022-01',1,39,InsereUltimoNumSeq()),
(40,1049,'2022-08-08 00:00:00',13,'loteNovo',1,40,InsereUltimoNumSeq()),
(13,1106,'2023-06-27 09:00:00',13,'320POLIO2023-04',2,41,InsereUltimoNumSeq()),
(15,1032,'2023-07-25 09:00:00',13,'257POLIO2022-01',1,42,InsereUltimoNumSeq()),
(44,1058,'2024-02-12 00:00:00',13,'loteNovo',1,43,InsereUltimoNumSeq()),
(35,1036,'2023-10-09 00:00:00',13,'loteNovo',1,44,InsereUltimoNumSeq())

DELIMITER //
CREATE TRIGGER bi_user
  BEFORE INSERT ON user
  FOR EACH ROW
BEGIN
  IF NEW.email NOT LIKE '_%@_%.__%' THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email field is not valid';
  END IF;
END; //
DELIMITER ;
DELIMITER //
CREATE TRIGGER insereApenasComDataMaior
  BEFORE INSERT ON DoseReservada
  FOR EACH ROW
BEGIN
  IF DATEDIFF((SELECT dataCompletaEmpenho FROM Empenho WHERE EMP_numLote < NEW.DOS_numLote),NEW.DOS_dataAgendada) > 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Não há estoque da vacina para esta data';
  END IF;
END; //
DELIMITER ;
INSERT INTO `DoseReservada`(`DOS_protocoloAgendamento`, `DOS_codigoCidadao`, `DOS_dataAgendada`, `DOS_codigoVacina`, `DOS_numLote`, `DOS_codigoCentro`) VALUES (156,43,'2022-09-14 22:43:30.000000',13,'lote Novo 2',2);

SELECT `RDA_codigoCentro` as centro, COUNT(*) FROM `RegistroDaAplicacao` GROUP BY centro;


SELECT DATE(`DOS_dataAgendada`)d, count(*),`DOS_codigoCentro`centro FROM `DoseReservada` group by d ORDER BY `count(*)` DESC;

SELECT `DOS_codigoCentro`cc,DATE(`DOS_dataAgendada`) d, COUNT(*) FROM `DoseReservada` Group BY cc,d order by d DESC;
