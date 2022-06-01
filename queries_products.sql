-- Comments in SQL Start with dash-dash --

-- Add a product to the table with the name of “chair”, price of 44.00, and can_be_returned of false.
Insert Into products(name, price, can_be_returned) Values ('chair', 44.00, false);

-- Add a product to the table with the name of “stool”, price of 25.99, and can_be_returned of true.
Insert Into products(name, price, can_be_returned) Values ('stool', 25.99, true);

-- Add a product to the table with the name of “table”, price of 124.00, and can_be_returned of false.
Insert Into products(name, price, can_be_returned) Values ('table', 124.00, false);

-- Display all of the rows and columns in the table.
Select * From products;

-- Display all of the names of the products.
Select name From products;

--Display all of the names and prices of the products.
Select name, price, From products;

-- Add a new product - make up whatever you would like!
Insert Into products(name, price, can_be_returned) Values ('rug', 89.99, false);

-- Display only the products that can_be_returned.
Select * From products Where can_be_returned = true;

-- Display only the products that have a price less than 44.00.
Select * From products Where price < 44.00;

-- Display only the products that have a price in between 22.50 and 99.99.
Select * From products Where price > 22.50 And price < 99.99;

-- There’s a sale going on: Everything is $20 off! Update the database accordingly.
Update products Set price = price - 20;

-- Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.
Delete From products Where price < 25;

-- And now the sale is over. For the remaining products, increase their price by $20.
Update products Set price = price + 20; 

-- There is a new company policy: everything is returnable. Update the database accordingly.
Update products Set can_be_returned = true;