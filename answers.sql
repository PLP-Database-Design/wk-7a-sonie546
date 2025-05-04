--Question one 
create table ProductDetail (
    OrderID int, 
    CustomerName varchar (100),
    Products varchar (100)
    );   
insert into ProductDetail (OrderID,  CustomerName, Products)
values 
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', ' Mouse'),
(103, 'Emily Clark', 'Phone');

--Question two
create table Orders (
    OrderID INT PRIMARY KEY,
    CustomerName varchar (100)
    );
insert into Orders (OrderID, CustomerName)
values 
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

CREATE TABLE Product (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
    );
);
insert into Product (OrderID, Product, Quantity)
values 
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
