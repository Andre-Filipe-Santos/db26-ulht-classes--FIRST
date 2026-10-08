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

-- AGORA VAMOS METER RESTRICOES (CONSTRAINTS)

USE BikeStoresPlus;
CREATE TABLE analytics.products2 (
    product_id INT PRIMARY KEY,--agora ja nao permite inserir dados com keys iguais
    product_name VARCHAR(255) NOT NULL,
    brand_id INT NOT NULL,
    category_id INT NOT NULL,
    model_year SMALLINT NOT NULL,
    list_price DECIMAL(10,2) NOT NULL -- 10 posicoes com 2 casas decimais
);

SELECT * FROM BikeStoresPlus.analytics.products2;

--inserir dados na tabela

INSERT INTO analytics.products2 (
    product_id, 
    product_name,
    brand_id,
    category_id,
    model_year,
    list_price
    )
    VALUES(1,'ANTONIO', 500, 30, 2026, 700.00);

SELECT * FROM BikeStoresPlus.analytics.products2; 

--agora com primary keu auto incrementada

USE BikeStoresPlus;
CREATE TABLE analytics.products3 (
    product_id INT IDENTITY(1,1) PRIMARY KEY,--agora ja nao permite inserir dados com keys iguais -- IDENTITY(1,1) 
    product_name VARCHAR(255) NOT NULL,
    brand_id INT NOT NULL,
    category_id INT NOT NULL,
    model_year SMALLINT NOT NULL,
    list_price DECIMAL(10,2) NOT NULL -- 10 posicoes com 2 casas decimais
);
