CREATE DATABASE demo;

USE demo;

CREATE TABLE Products (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          productCode varchar(10) not null,
                          productName VARCHAR(50) NOT NULL,
                          productPrice DECIMAL(10,2) NOT NULL,
                          productAmount INT NOT NULL,
                          productDescription VARCHAR(255),
                          productStatus Bit Default 1
);

INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES
    ('P001', 'Bàn học sinh', 1200000.00, 10, 'Bàn học sinh bằng gỗ tự nhiên', 1),
    ('P002', 'Ghế xoay', 850000.00, 15, 'Ghế xoay có tựa lưng, màu đen', 1),
    ('P003', 'Tủ sách', 2300000.00, 5, 'Tủ sách 5 tầng bằng gỗ công nghiệp', 1),
    ('P004', 'Đèn bàn LED', 250000.00, 20, 'Đèn bàn LED chống cận, màu trắng', 1),
    ('P005', 'Kệ giày', 450000.00, 8, 'Kệ để giày 3 tầng', 0);

EXPLAIN SELECT * FROM Products WHERE productCode = 'P003';

CREATE UNIQUE INDEX index_productCode ON Products(productCode);

CREATE UNIQUE INDEX index_products ON Products(productName,productPrice);

EXPLAIN SELECT * FROM Products WHERE productName = 'Tủ sách' and productPrice = 2300000.00 ;

CREATE VIEW products_views AS
SELECT productCode, productName, productPrice, productStatus
FROM  Products;
select * from products_views;

CREATE OR REPLACE VIEW products_views AS
SELECT productCode, productName, productPrice, productStatus
FROM Products
WHERE productStatus = 1;
select * from products_views;

UPDATE products_views
SET productPrice = 2500000.00
WHERE productName = 'Tủ sách';
select * from products_views;

-- INSERT INTO products_views
-- VALUES ('P006', 'Bảng', 500000.00, 1);

DELETE FROM products_views
WHERE productName =  'Tủ sách';
select * from products_views;

DROP VIEW products_views;



DELIMITER //

CREATE PROCEDURE findAllProducts()
BEGIN
SELECT * FROM Products;
END //

DELIMITER ;

call findAllProducts();

DELIMITER //
CREATE PROCEDURE addProduct(
    IN pCode VARCHAR(10),
    IN pName VARCHAR(50),
    IN pPrice DECIMAL(10,2),
    IN pAmount INT,
    IN pDesc VARCHAR(255),
    IN pStatus BIT
)
BEGIN
INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES (pCode, pName, pPrice, pAmount, pDesc, pStatus);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE updateProductById(
    IN pId INT,
    IN pPrice DECIMAL(10,2),
    IN pAmount INT
)
BEGIN
UPDATE Products
SET productPrice = pPrice, productAmount = pAmount
WHERE id = pId;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE deleteProductById(
    IN pId INT
)
BEGIN
DELETE FROM Products WHERE id = pId;
END //
DELIMITER ;








