CREATE TABLE phones
(
    Id SERIAL PRIMARY KEY,
    ProductName VARCHAR(30) NOT NULL,
    Manufacturer VARCHAR(20) NOT NULL,
    ProductCount INTEGER DEFAULT 0,
    Price NUMERIC
);

INSERT INTO phones  (ProductName, Manufacturer, ProductCount, Price)
VALUES
('IPHONE 15 PRO MAX ULTRA', 'Apple', 1, 15000),
('GALAXY A32', 'Samsung', 2, 298329),
('HONOR 10S', 'Samsung', 3, 6176),
('POCO 20C', 'POCO', 4, 4894),
('GALAXY 30A', 'Samsung', 5, 47297)

SELECT * FROM phones WHERE Manufacturer = 'Samsung';

UPDATE phones SET Manufacturer = 'Samsung' WHERE ProductName = 'POCO 20C';

DELETE FROM phones WHERE Manufacturer = 'Apple' AND ProductCount = 1;