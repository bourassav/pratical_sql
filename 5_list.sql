select
    geo_name,
    state_us_abbreviation as "st",
    p0010001 as "Total Population",
    p0010003 as "White Alone",
    p0010004 as "Black or African American Alone",
    p0010005 as "Am Indian/Alaska Native Alone",
    p0010006 as "Asian Alone",
    p0010007 as "Native Hawaiian and Other Pacific Islander Alone",
    p0010008 as "Some Other Race Alone",
    p0010009 as "Two or More Races"
from us_counties_2010;
