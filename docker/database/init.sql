DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS balance;
DROP TABLE IF EXISTS history;
DROP TABLE IF EXISTS commission;

CREATE TABLE users(
    id SERIAL NOT NULL PRIMARY KEY,--уникальный номер записи
    name VARCHAR NOT NULL UNIQUE, -- имя пользователя
    password VARCHAR,-- init пароль
    balance_id SERIAL NOT NULL
);

CREATE TABLE balance(
	id INT NOT NULL REFERENCES users(balance_id),
	amount INT NOT NULL,
	currency INT NOT NULL
);

CREATE TABLE history(
	id SERIAL NOT NULL PRIMARY KEY,
	date DATE NOT NULL,
	amount INT NOT NULL,
	currency INT NOT NULL
);

CREATE TABLE commission(
	id SERIAL NOT NULL PRIMARY KEY,
	amount INT NOT NULL,
	currency INT NOT NULL
);


INSERT INTO users (id, password, balance_id) VALUES (1, nekit, nekit, 11)