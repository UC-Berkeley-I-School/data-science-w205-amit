drop table bike_share_raw;

create external table bike_share_raw
(
datetime string,
season int,
holiday int,
workingday int,
weather int,
temp float,
atemp float,
humidity float,
windspeed float,
casual int,
registered int,
count int
)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/w205/bike_share'   
;

drop table seasons;

create external table seasons
(
season int,
name string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/w205/season'
;

drop table weather;
create external table weather
(
weather int,
name string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
LOCATION '/user/w205/weather'
;
