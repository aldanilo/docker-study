CREATE DATABASE geofusion;
use geofusion;

LOAD DATA INFILE "/db/eventos_de_ﬂuxo.csv"
INTO TABLE eventos_de_ﬂuxo
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
