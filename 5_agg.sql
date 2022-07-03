select
    sum(p0010001) as "County Sum",
    round(avg(p0010001  ), 0) as "County Average"
from us_counties_2010;