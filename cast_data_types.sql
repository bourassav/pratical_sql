select timestamp_column, cast(timestamp_column as varchar(10))
from date_time_types;

select numeric_column,
    cast(numeric_column as integer),
    cast(numeric_column as varchar(6))
from number_data_types;

select cast(char_column as integer) from char_data_types;