SELECT
    pls14.stabr,
    sum(pls09.gpterms) AS gpterms09,
    sum(pls14.gpterms) AS gpterms14,
    round(
        (
            (
                cast(sum(pls14.gpterms) AS decimal(10, 1)) - sum(pls09.gpterms)
            ) / sum(pls09.gpterms)
        ) * 100,
        2
    ) AS gp_pct_change,
    sum(pls09.pitusr) AS pitusr09,
    sum(pls14.pitusr) AS gpterms14,
    round(
        (
            (
                cast(sum(pls14.pitusr) AS decimal(12, 1)) - sum(pls09.pitusr)
            ) / sum(pls09.pitusr)
        ) * 100,
        2
    ) AS pit_pct_change
FROM
    pls_fy2014_pupld14a pls14
    JOIN pls_fy2009_pupld09a pls09 ON pls14.stabr = pls09.stabr
WHERE
    pls14.gpterms >= 0
    AND pls14.pitusr >= 0
    AND pls09.gpterms >= 0
    AND pls09.pitusr >= 0
GROUP BY
    pls14.stabr
ORDER BY
    gp_pct_change DESC;