CREATE DATABASE geofusion;
use geofusion;

LOAD DATA INFILE "/docker-entrypoint-initdb.d/bairros.csv"
INTO TABLE bairros
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
