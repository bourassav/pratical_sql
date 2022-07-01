create temporary table supervisor_salaries_temp (LIKE supervisor_salaries);

copy supervisor_salaries_temp (town, supervisor, salary)
from '/home/vbourassa/pratical_sql/supervisor_salaries.csv'
with (format csv, header);

insert into supervisor_salaries (town, county, supervisor, salary)
select town, 'Some County', supervisor, salary
from supervisor_salaries_temp;

drop table supervisor_salaries_temp;