-- Thong tin khach hang
CREATE TABLE Customer(
	CustomerID INT PRIMARY KEY,
	CustomerName NVARCHAR(50),
	HomeAddress NVARCHAR(200),
	Telephone CHAR(12),
	Status VARCHAR (20),
)


INSERT INTO  Customer VALUES (1, 'Ngo', 'HaNoi', '012345678', NULL);
INSERT INTO  Customer VALUES (2, 'Thuy', 'TPHCM', '012345678', NULL);
INSERT INTO  Customer VALUES (3, 'Van', 'DaNang', '012345678', NULL);

DROP TABLE Customer

SELECT * FROM Customer;

CREATE TABLE Product(
ProductID INT PRIMARY KEY,
	NAME NVARCHAR (30),
	Description NVARCHAR (30),
	Unit NVARCHAR (10),
	Price INT,
	Quantity INT,
);

INSERT INTO Product VALUES (1, 'Máy Tính T450', 'Máy nhập mới', 'chiếc', 1000, 1);
INSERT INTO Product VALUES (2, 'Điện Thoại Nokia 5670', 'Điện thoại đang hot', 'chiếc', 200, 2);
INSERT INTO Product VALUES (3, 'Máy In Samsung 450', 'Máy in đang ế', 'chiếc', 100, 1);

DROP TABLE Product

SELECT * FROM Product;

CREATE TABLE Orders(
OrderID INT PRIMARY KEY,
CustomerID INT,
OrderDate DATE,
FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
);

INSERT INTO Orders VALUES (123, 1, '2023-09-28');
INSERT INTO Orders VALUES (234, 2, '2023-09-04');
INSERT INTO Orders VALUES (345, 3, '2023-12-24');

DROP TABLE Orders;

SELECT * FROM Orders;

CREATE TABLE OrderDetails (
	OrderID INT,
	ProductID INT,
	Price INT,
	Quantity INT,
	PRIMARY KEY (OrderID, ProductID),
	FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
	FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
);

INSERT INTO OrderDetails VALUES (123, 1, 1000, 1);
INSERT INTO OrderDetails VALUES (123, 2, 200, 2);
INSERT INTO OrderDetails VALUES (123, 3, 100, 1);

INSERT INTO OrderDetails VALUES (234, 1, 1000, 2);
INSERT INTO OrderDetails VALUES (234, 2, 200, 2);
INSERT INTO OrderDetails VALUES (234, 3, 100, 3);

INSERT INTO OrderDetails VALUES (345, 1, 1000, 1);
INSERT INTO OrderDetails VALUES (345, 2, 200, 4);
INSERT INTO OrderDetails VALUES (345, 3, 100, 3);

SELECT Customer.CustomerID, Customer.NAME 