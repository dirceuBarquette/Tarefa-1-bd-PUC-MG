SELECT codigoCidadao as cod,dataNascimento as nasc FROM `Agenda` RIGHT JOIN Cidadao ON AGN_codigoCidadao=codigoCidadao WHERE `AGN_codigoCidadao` IS null AND dataNascimento BETWEEN '2022-01-01' AND '2024-12-31';

SELECT codigoCidadao as cod,QUOTE(dataNascimento) as nasc, QUOTE(INTERVAL 60 DAY + dataNascimento) as dose1 FROM `Agenda` RIGHT JOIN Cidadao ON AGN_codigoCidadao=codigoCidadao WHERE `AGN_codigoCidadao` IS null AND dataNascimento BETWEEN '2022-01-01' AND '2024-12-31';


Insert INTO Agenda (`AGN_codigoCidadao`,`dataAgendamento`) SELECT codigoCidadao,(INTERVAL 60 DAY + dataNascimento) FROM `Agenda` RIGHT JOIN Cidadao ON AGN_codigoCidadao=codigoCidadao WHERE `AGN_codigoCidadao` IS null AND dataNascimento BETWEEN '2022-01-01' AND '2024-12-31';

DROP TRIGGER IF EXISTS `Decrementa_Estoque`;CREATE DEFINER=`root`@`localhost` TRIGGER `Decrementa_Estoque` AFTER INSERT ON `Empenho` FOR EACH ROW UPDATE Estoque SET emEstoque=0 where numLote = NEW.EMP_numLote

DROP TRIGGER IF EXISTS `Decrementa_Empenho`;CREATE DEFINER=`root`@`localhost` TRIGGER `Decrementa_Empenho` AFTER INSERT ON `DoseReservada` FOR EACH ROW UPDATE Empenho SET quantidade=quantidade - 1 where EMP_numLote = NEW.DOS_numLote;

INSERT INTO `Empenho` (`EMP_codigoVacina`, `EMP_numLote`, `EMP_codigoCentro`, `dataCompletaEmpenho`, `quantidade`) VALUES ('13', 'loteNovo', '1', '2024-09-13 21:49:09.000000', AtualizaQuantPorLote(13))

CREATE DEFINER=`root`@`localhost` FUNCTION `AtualizaQuantPorLote`(`codVacina` INT UNSIGNED) RETURNS SMALLINT(6) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER RETURN (SELECT quantidadePorLote FROM Vacina WHERE Vacina.codigoVacina = codVacina)

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

