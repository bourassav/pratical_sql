select sum(p0010001) as "county sum",
    round(avg(p0010001), 0) as "county average",
    percentile_cont(.5)
    within group(order by p0010001) as "county median"
from us_counties_2010;