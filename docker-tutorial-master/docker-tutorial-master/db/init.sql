CREATE DATABASE IF NOT EXISTS geofusion
DEFAULT CHARACTER SET UTF8
DEFAULT COLLATE utf8_general_ci;
use geofusion;



CREATE TABLE bairros (
  codigo VARCHAR(255)
  , nome VARCHAR(255)
  , municipio VARCHAR(255)
  , uf VARCHAR(255)
  , area FLOAT NOT NULL
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/bairros.csv' 
INTO TABLE bairros 
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

CREATE TABLE concorrentes (
  codigo VARCHAR(255)
  , nome VARCHAR(255)
  , categoria VARCHAR(255)
  , faixa_preco INT
  , endereco VARCHAR(255)
  , municipio VARCHAR(255)
  , uf VARCHAR(255)
  ,codigo_bairro VARCHAR(255
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/concorrentes.csv' 
INTO TABLE bairros 
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

CREATE TABLE eventos_de_fluxo (
  codigo VARCHAR(255)
  , datetime TIMESTAMP
  , codigo_concorrente
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/eventos_de_fluxo.csv' 
INTO TABLE bairros 
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

CREATE TABLE potencial (
  CODIGO VARCHAR(255)
  , QTD_AGENCIAS INT
  , EMPRESAS INT
  , EMPREGADOS INT
  , RENDA CHAR(1)
  , FATURAMENTO FLOAT
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/potencial.csv' 
INTO TABLE bairros 
CHARACTER SET UTF8
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;
