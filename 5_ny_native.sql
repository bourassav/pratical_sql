select
    geo_name,
    p0010001 as "Total Population",
    p0010005 as "Am Indian/Alaska Native Alone",
    round((cast(p0010005 as numeric(8,2)) / p0010001) * 100, 2) as "Percentage"
from us_counties_2010
where
    state_us_abbreviation='NY'
order by "Percentage" DESC
limit 1;
