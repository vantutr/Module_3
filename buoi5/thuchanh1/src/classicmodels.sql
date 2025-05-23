use classicmodels;

select * from customers
where customerName = 'Land of Toys Inc.';

EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

ALTER TABLE customers ADD INDEX idx_customerName(customerName);
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);

ALTER TABLE customers DROP INDEX idx_full_name;


