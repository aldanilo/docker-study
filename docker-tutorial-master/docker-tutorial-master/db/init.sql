CREATE DATABASE geofusion;
use geofusion;

CREATE TABLE bairros (
  codigo VARCHAR(255) NOT NULL
  , nome VARCHAR(255) NOT NULL
  , municipio VARCHAR(255) NOT NULL
  , uf VARCHAR(255) NOT NULL
  , area FLOAT NOT NULL
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/bairros.csv' 
INTO TABLE bairros 
CHARACTER SET UTF8 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

