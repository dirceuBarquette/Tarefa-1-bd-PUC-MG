
-- •Percentual de Agendamentos Atendidos por Centro de Vacinação.
SELECT
    cv.nomeCentro AS Centro,
    (COUNT(*) / total * 100) AS Percent
FROM
    `RegistroDaAplicacao` rda
INNER JOIN CentroVacinacao cv ON
    rda.RDA_codigoCentro = cv.CodigoCentro,
    (
    SELECT
        COUNT(RDA_codigoCentro) AS total
    FROM
        RegistroDaAplicacao
) t
GROUP BY
    Centro;

-- •Média de Idade dos Cidadãos Vacinados. 5858
SELECT
    (AVG(TIMESTAMPDIFF(MONTH, cid.dataNascimento, rda.RDA_dataAgendada))/COUNT(*)) AS `Média de Idades em meses`
FROM
    `RegistroDaAplicacao` rda
INNER JOIN Cidadao cid ON
    rda.RDA_codigoCidadao = cid.CodigoCidadao

-- •Total de Doses Aplicadas por Vacina.
SELECT
    v.nome AS `Nome da Vacina`,
    COUNT(*) AS Total
FROM
    `RegistroDaAplicacao` rda
INNER JOIN Vacina v ON
    rda.RDA_codigoVacina = v.CodigoVacina
GROUP BY
    `Nome da Vacina`;

-- •Percentual de Agendamentos Realizados por Faixa Etária.
SELECT idade, COUNT(*)/(SELECT COUNT(*) FROM Agenda)*100 FROM ( SELECT TIMESTAMPDIFF(year, cid.dataNascimento, agn.dataAgendada) idade FROM Agenda agn INNER JOIN Cidadao cid ON agn.AGN_codigoCidadao=cid.codigoCidadao ) abc GROUP BY idade;

-- •Número Médio de Agendamentos Diários por Centro de Vacinação.
SELECT DOS_codigoCentro Centro,COUNT(*)/ 
(SELECT TIMESTAMPDIFF(DAY,MIN(DOS_dataAgendada),MAX(DOS_dataAgendada)) FROM `DoseReservada` dos	) FROM `DoseReservada`dos GROUP BY Centro

-- •Total de Doses Aplicadas por Centro de Vacinação.
SELECT `nomeCentro` nome, COUNT(*) total FROM `RegistroDaAplicacao` INNER JOIN CentroVacinacao cv ON `RDA_codigoCentro`= CodigoCentro GROUP BY nome;

-- •Percentual de Cidadãos Totalmente Vacinados.

-- •Tempo Médio entre Agendamento e Aplicação da Vacina.

-- •Total de Cidadãos por Centro de Vacinação.
SELECT `nomeCentro` nome, COUNT(*) total FROM `RegistroDaAplicacao` INNER JOIN CentroVacinacao cv ON `RDA_codigoCentro`= CodigoCentro GROUP BY nome;

-- •Média de Agendamentos por Cidadão.
;

-- •Percentual de Agendamentos Realizados em Relação à Capacidade Diária por Centro de Vacinação.

-- •Doses Aplicadas por Semana.

-- •Percentual de Cidadãos que Realizaram Agendamento.

-- •Média de Doses Aplicadas por Dia.

-- •Tempo Médio entre a Aplicação das Doses (para vacinas de múltiplas doses).
