DROP TABLE IF EXISTS ice_cream_survey;

CREATE TABLE ice_cream_survey (
    response_id integer PRIMARY KEY,
    office varchar(20),
    flavor varchar(20)
);

copy ice_cream_survey
FROM
    '/home/roger/pratical_sql/ice_cream_survey.csv' WITH (format csv, header);