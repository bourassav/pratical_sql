SELECT
    sum(pls14.visits) AS visits_2014,
    sum(pls09.visits) AS visits_2009
FROM
    pls_fy2014_pupld14a pls14
    INNER JOIN pls_fy2009_pupld09a pls09 ON pls14.fscskey = pls09.fscskey
WHERE
    pls14.visits >= 0
    AND pls09.visits >= 0;