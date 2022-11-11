-- Работа с SQL.
--for Rina.

-- добавление таблицы в БД, для выполнения выделить и нажать play.
CREATE TABLE stars (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR,
    x int NOT NULL,
    y int NOT NULL   --запятая в конце перед скобками не ставится!
);

--где stars - имя таблицы.
-- PRIMARY KEY - уникальный номер слоя.
-- id, name, x, y - названия столбцов в таблице.
-- все остальное значения переменных.
-- BIGSERIAL - возможность внести большое количество данных, в отличие от просто SERIAL.

-- удаление таблицы
DROP TABLE stars;

-- добавление одного слоя с информацией в БД
INSERT INTO stars VALUES (null, 'sun', 'Samsung', 400, 500);

-- добавление несколько слоев с информацией в БД
INSERT INTO phones  (ProductName, Manufacturer, ProductCount, Price)
VALUES
('IPHONE 15 PRO MAX ULTRA', 'Apple', 1, 15000),
('GALAXY A32', 'Samsung', 2, 298329),
('HONOR 10S', 'Samsung', 3, 6176)


--выборка всех слоев в БД
SELECT * FROM stars;

--выборка слоев с значениями по условию (здесь те, у которых х больше 400)
SELECT * FROM stars WHERE x > 400;

--внести определенные обновления в имеющуюся строку БД
UPDATE stars SET x = 500 WHERE id = 1;

--удалить слой с определенным условием
DELETE FROM stars WHERE id = 4; 

--удалить слой с несколькими условиями через AND
DELETE FROM stars WHERE x > 500 AND y > 800; 

-- домашней работой было поэксперементировать со своей Базой Данных про телефоны. Все, что было использовано, представлено выше.

-- сайт для самостоятельного изучения программ SQL (https://metanit.com/sql/postgresql/)