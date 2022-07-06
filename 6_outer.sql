SELECT
    *
FROM
    schools_left FULL
    OUTER JOIN schools_right ON schools_left.id = schools_right.id;