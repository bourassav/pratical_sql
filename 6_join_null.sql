SELECT
    *
FROM
    schools_left
    LEFT JOIN schools_right ON schools_left.id = schools_right.id
WHERE
    schools_right.id IS NULL;