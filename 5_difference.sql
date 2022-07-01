select 
    geo_name,
    state_us_abbreviation as "st",
    p0010001 as "Total",
    p0010003 + p0010004 + p0010005 + p0010006 + p0010007 + p0010008 + p0010009
    as "All Races",
    (p0010003 + p0010004 + p0010005 + p0010006 + p0010007 + p0010008 + p0010009)
    - p0010001 as "Difference"
from us_counties_2010
order by "Difference" DESC;