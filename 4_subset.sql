create table if not exists supervisor_salaries(
    town varchar(30),
    county varchar(30),
    supervisor varchar(30),
    start_date date,
    salary money,
    benefits money
);

copy supervisor_salaries (town, supervisor, salary)
from '/home/vbourassa/pratical_sql/supervisor_salaries.csv'
with (format csv, header);