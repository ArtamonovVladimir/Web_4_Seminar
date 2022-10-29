-- 2. Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.
-- Необходимо добавить 5-10 одногруппников в данную таблицу.
-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), которые живут в Москве и их возраст находится в диапазоне [18, 30) лет. 
-- Примечание:
-- Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", то есть диапазон (7, 9] означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". 
-- Для проверок работы своего скрипта можете использовать свою базу данных, либо используйте сайт: https://onecompiler.com/mysql

-- create
CREATE TABLE STUDENTS (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  address TEXT NOT NULL
);

-- insert
INSERT INTO STUDENTS (name, age, address) VALUES ('Clark', 18, 'Moscow');
INSERT INTO STUDENTS (name, age, address) VALUES('Dave', 19, 'Chelyabinsk');
INSERT INTO STUDENTS (name, age, address) VALUES ('Ava', 20, 'Pskov');
INSERT INTO STUDENTS (name, age, address) VALUES ('Lena', 20, 'Pskov');
INSERT INTO STUDENTS (name, age, address) VALUES ('Vova', 40, 'Moscow');
INSERT INTO STUDENTS (name, age, address) VALUES ('Petya', 19, 'Pskov');
INSERT INTO STUDENTS (name, age, address) VALUES ('Lavr', 20, 'Moscow');
INSERT INTO STUDENTS (name, age, address) VALUES ('Sergey', 30, 'Narva');
INSERT INTO STUDENTS (name, age, address) VALUES ('Anna', 22, 'Leningrad');

-- fetch 
SELECT name FROM STUDENTS WHERE age >= 18 AND age < 30;