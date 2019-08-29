CREATE DATABASE dbproject;

use dbproject;

CREATE TABLE Customers
(
  CID INT NOT NULL UNIQUE,
  Cname VARCHAR(15) NOT NULL,
  Cphone VARCHAR(15) NOT NULL,
  Cemail VARCHAR(30) NOT NULL,
  Caddr VARCHAR(45) NOT NULL,
  PRIMARY KEY (CID)
);

CREATE TABLE Orders
(
  OID INT NOT NULL UNIQUE,
  Cname VARCHAR(15) NOT NULL,
  Odate VARCHAR(15) NOT NULL,
  CID INT NOT NULL,
  PRIMARY KEY (OID),
  FOREIGN KEY (CID) REFERENCES Customers(CID)
);

CREATE TABLE Products
(
  PID INT NOT NULL UNIQUE,
  Pname VARCHAR(30) NOT NULL,
  Pinfo VARCHAR(40) NOT NULL,
  Pprice FLOAT NOT NULL,
  PRIMARY KEY (PID)
);

CREATE TABLE Suppliers
(
  SID INT NOT NULL UNIQUE,
  Sname VARCHAR(15) NOT NULL,
  Sphone VARCHAR(15) NOT NULL,
  Semail VARCHAR(30) NOT NULL,
  Saddr VARCHAR(45) NOT NULL,
  PRIMARY KEY (SID)
);

CREATE TABLE OrdersProducts
(
  Qty INT NOT NULL,
  PID INT NOT NULL,
  OID INT NOT NULL,
  FOREIGN KEY (PID) REFERENCES Products(PID),
  FOREIGN KEY (OID) REFERENCES Orders(OID)
);

CREATE TABLE ProductsSuppliers
(
  PID INT NOT NULL,
  SID INT NOT NULL,
  FOREIGN KEY (PID) REFERENCES Products(PID),
  FOREIGN KEY (SID) REFERENCES Suppliers(SID)
);
