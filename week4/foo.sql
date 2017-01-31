CREATE EXTERNAL TABLE foo (
    name string,
    age int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/user/w205/foo'
