SELECT
    st,
    count(*) AS st_count
FROM
    meat_poultry_egg_inspect
GROUP BY
    st
ORDER BY
    st;