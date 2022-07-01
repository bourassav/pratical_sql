select
    geo_name,
    p0010006 as "Asian Alone",
    p0010001 as "Total",
    round((cast(p0010006 as numeric(8,1)) / p0010001), 3) * 100 as "Percent Asian"
from us_counties_2010
order by "Percent Asian" Desc;