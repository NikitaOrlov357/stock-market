DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS balance;
DROP TABLE IF EXISTS history;
DROP TABLE IF EXISTS commission;

CREATE TABLE users(
    id SERIAL NOT NULL PRIMARY KEY,--уникальный номер записи
    name  VARCHAR NOT NULL UNIQUE, -- имя пользователя
    password VARCHAR -- init пароль
);

CREATE TABLE balance(
	id SERIAL NOT NULL PRIMARY KEY,
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