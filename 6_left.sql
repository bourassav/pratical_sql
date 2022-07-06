SELECT
    *
FROM
    schools_left
    LEFT JOIN schools_right ON schools_left.id = schools_right.id;