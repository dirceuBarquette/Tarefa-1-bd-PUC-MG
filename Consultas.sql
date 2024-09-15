
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
    (SUM(TIMESTAMPDIFF(MONTH, cid.dataNascimento, rda.RDA_dataAgendada))/COUNT(*)) AS `Média de Idades em meses`
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
-- FALTA

-- •Número Médio de Agendamentos Diários por Centro de Vacinação.
-- AINDA NÃO DEU CERTO
SELECT
    cv.nomeCentro Centro, COUNT(`Ag./dia`.quantidade)
FROM
    `DoseReservada` dos
INNER JOIN CentroVacinacao cv ON
    dos.DOS_codigoCentro = cv.CodigoCentro,
    (
        SELECT
                `DOS_codigoCentro` ct,
                DATE(`DOS_dataAgendada`) dt,
                COUNT(*) quantidade
        FROM
            `DoseReservada`
        GROUP BY
            `ct`, `dt`
    ) `Ag./dia`
WHERE cv.CodigoCentro=`Ag./dia`.ct
GROUP BY
    Centro;

-- •Total de Doses Aplicadas por Centro de Vacinação.
