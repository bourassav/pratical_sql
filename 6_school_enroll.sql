CREATE TABLE schools_enrollment(id integer, enrollment integer);

CREATE TABLE schools_grades(id integer, grades varchar(10));

INSERT INTO
    schools_enrollment
VALUES
    (1, 360),
    (2, 1001),
    (5, 450),
    (6, 927);

INSERT INTO
    schools_grades
VALUES
    (1, 'K-3'),
    (2, '9-12'),
    (5, '6-8'),
    (6, '9-12');
