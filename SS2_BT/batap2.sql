CREATE DATABASE QuanLyBanHang;
USE QuanLyBanHang;

CREATE TABLE Customer (
    cID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cName VARCHAR(255),
    cPhone VARCHAR(15)
);
 
CREATE TABLE Orders (
    oID INT PRIMARY KEY AUTO_INCREMENT,
    cID INT,
    oDate DATE,
    FOREIGN KEY (cID)
        REFERENCES Customer (cID)
);

CREATE TABLE Product (
    pID INT PRIMARY KEY AUTO_INCREMENT,
    pName VARCHAR(255),
    pPrice FLOAT
);


CREATE TABLE OrderDetail (
    oID INT,
    pID INT,
    Quantity INT,
    primary key(oID,pID),
    FOREIGN KEY (oID) REFERENCES Orders(oID),
    FOREIGN KEY (pID) REFERENCES Product(pID)
);