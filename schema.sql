DROP TABLE IF EXISTS card_holder CASCADE;
DROP TABLE IF EXISTS credit_card CASCADE;
DROP TABLE IF EXISTS merchant CASCADE;
DROP TABLE IF EXISTS merchant_category CASCADE;
DROP TABLE IF EXISTS transactions CASCADE;


-- Create card_holder table and insert values
CREATE TABLE card_holder (
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(255)
);

-- Create credit_card table and insert values
CREATE TABLE credit_card (
  card bigint PRIMARY KEY NOT NULL,
  id_card_holder INT
);

-- Create merchant table and insert values
CREATE TABLE merchant (
  card int PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  id_merchant_category int 	
);

-- Create merchant category table and insert values
CREATE TABLE merchant_category (
  id int PRIMARY KEY NOT NULL,
  name VARCHAR(50)	
);

-- Create merchant transaction table and insert values
CREATE TABLE transactions (
  id int PRIMARY KEY NOT NULL,
  date TIMESTAMP,
  amount float,
  card bigint,
  id_merchant int
);

