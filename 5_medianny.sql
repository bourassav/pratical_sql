select
    percentile_cont(.5)
    within group(order by p0010001),
    state_us_abbreviation
from us_counties_2010
where state_us_abbreviation in ('NY', 'CA')
group by state_us_abbreviation;