insert into char_data_types
values
('abc', 'abc', 'abc'),
('defghi', 'defghi', 'defghi');
copy char_data_types to '/home/vbourassa/pratical_sql/typetest.txt'
with (format csv, header, delimiter '|');