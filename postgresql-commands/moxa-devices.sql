CREATE SCHEMA IF NOT EXISTS test ;
CREATE TABLE IF NOT EXISTS test.Customers 
(CustomerID SERIAL, CustomerName VARCHAR(50), ContactName VARCHAR(50), Address VARCHAR(50), City VARCHAR(20), PostalCode VARCHAR(20), Country VARCHAR(20), PRIMARY KEY (CustomerID));


--insert
INSERT INTO test.Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden')
ON CONFLICT DO NOTHING;
COMMIT;

--verify
SELECT *
FROM test.Customers;