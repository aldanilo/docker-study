CREATE DATABASE geofusion;
use geofusion;

LOAD DATA INFILE "/docker/docker-tutorial-master/docker-tutorial-master/db/bairros.csv"
INTO TABLE bairros
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
