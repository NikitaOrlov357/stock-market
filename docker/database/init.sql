DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS transaction;

CREATE TABLE users(
    id SERIAL NOT NULL PRIMARY KEY,--уникальный номер записи
    name VARCHAR NOT NULL UNIQUE, -- имя пользователя
    password VARCHAR-- init пароль
);

CREATE TABLE transaction(
    id SERIAL NOT NULL PRIMARY KEY,
	users_id INT NOT NULL REFERENCES users(id),
	date DATE NOT NULL default NOW(),
	amount INT NOT NULL,
	currency INT NOT NULL,
    commission DOUBLE PRECISION default 0
);


INSERT INTO users (name, password) VALUES ('nekit', 'nekit')