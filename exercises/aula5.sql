SELECT * FROM  sys.databases;

CREATE DATABASE BikeStoresPlus;

USE BikeStoresPlus;

SELECT * FROM INFORMATION_SCHEMA.TABLES; --aqui ainda nao criei tabelas dentro do schema BikeStoresPlus

SELECT * FROM sys.schemas WHERE name NOT LIKE 'db%';

CREATE SCHEMA "marketing";

CREATE SCHEMA "analytics";

SELECT * FROM sys.schemas WHERE name NOT LIKE 'db%';

USE BikeStoresPlus;
CREATE TABLE marketing.products (product_id INT, product_name VARCHAR (255));

SELECT * FROM INFORMATION_SCHEMA.TABLES;

INSERT INTO BikeStoresPlus.marketing.products (product_id,product_name) VALUES (120, 'GANDA MAKINA');
INSERT INTO BikeStoresPlus.marketing.products (product_id,product_name) VALUES (120, 'GANDA MAKINA 200');

--PROBLEMA AINDA NAO FOI METIDA CHAVE, PODE HAVER PRODUTOS COM ID REPETIDA NESTE CASO 120

SELECT * FROM BikeStoresPlus.marketing.products;


