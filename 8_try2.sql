SELECT
    pls09.obereg,
    sum(pls09.visits) AS visits_09,
    sum(pls14.visits) AS visits_14,
    round(
        (
            (
                cast(sum(pls14.visits) AS decimal(15, 1)) - sum(pls09.visits)
            ) / sum(pls09.visits)
        ) * 100,
        2
    ) AS pct_change
FROM
    pls_fy2009_pupld09a pls09
    JOIN pls_fy2014_pupld14a pls14 ON pls09.fscskey = pls14.fscskey
WHERE
    pls09.visits >= 0
    AND pls14.visits >= 0
GROUP BY
    pls09.obereg
ORDER BY
    pct_change DESC;