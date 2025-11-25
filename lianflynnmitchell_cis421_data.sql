/*CIS 421 Database Management Systems Final Project
Lian Flynn-Mitchell*/

USE bakebase;

/*products*/
INSERT INTO products (name, price, stock) VALUES
('Sourdough Bread', 5.50, 10),
('Whole Wheat Bread', 4.50, 8),
('Rye Bread', 4.75, 9),
('Baguette', 3.00, 12),

('Plain Bagel', 1.50, 40),
('Sesame Bagel', 1.75, 35),
('Everything Bagel', 2.00, 30),
('Cinnamon Raisin Bagel', 1.80, 35),
('Poppy Seed Bagel', 1.70, 30),
('Onion Bagel', 1.90, 25),

('Blueberry Muffin', 2.50, 20),
('Chocolate Chip Muffin', 2.75, 18),
('Banana Nut Muffin', 2.60, 20),
('Pumpkin Spice Muffin', 2.80, 15),

('Chocolate Croissant', 3.50, 15),
('Danish Pastry', 4.00, 12),
('Cinnamon Roll', 3.50, 18),
('Apple Turnover', 3.75, 14),

('Chocolate Cake', 20.00, 2),
('Carrot Cake', 16.00, 2);

/*customers*/
INSERT INTO customers (fname, lname, phone, email) VALUES
('John', 'Doe', '555-1234', 'john.doe@email.com'),
('Jane', 'Smith', '555-5678', 'jane.smith@email.com'),
('Alice', 'Johnson', '555-8765', 'alice.johnson@email.com'),
('Bob', 'Williams', '555-4321', 'bob.williams@email.com');


/*orders*/
INSERT INTO orders (cstmr_id, order_date, due_date) VALUES
(1, '2024-12-01 08:00:00', '2024-12-01 10:00:00'),
(2, '2024-12-02 09:00:00', '2024-12-02 11:00:00'), 
(3, '2024-12-03 10:00:00', '2024-12-03 12:00:00'),  
(4, '2024-12-04 11:00:00', '2024-12-04 13:00:00');  

/*order_items*/
INSERT INTO order_items (ord_id, prod_id, quantity) VALUES

/*John Doe's order (Order 1)*/
(1, 1, 2),  
(1, 12, 3), 

/*Jane Smith's order (Order 2)*/
(2, 2, 1),  
(2, 14, 2), 

/*Alice Johnson's order (Order 3)*/
(3, 4, 3),  
(3, 13, 2), 

/*Bob William's order (Order 4)*/
(4, 6, 1),  
(4, 15, 2);

/*ingredients*/
INSERT INTO ingredients (name, quantity, unit) VALUES
('Flour', 200, 'kg'),  
('Sugar', 60, 'kg'),  
('Butter', 80, 'kg'),
('Eggs', 600, 'units'), 
('Yeast', 15, 'kg'),  
('Salt', 30, 'kg'),  
('Cinnamon', 10, 'kg'), 
('Vanilla Extract', 2, 'liters'), 
('Baking Powder', 10, 'kg'),
('Chocolate Chips', 30, 'kg'), 
('Blueberries', 20, 'kg'), 
('Poppy Seeds', 5, 'kg'), 
('Sesame Seeds', 5, 'kg'), 
('Raisins', 10, 'kg'), 
('Carrots', 25, 'kg'), 
('Cocoa Powder', 10, 'kg'); 


/*product_ingredients*/
INSERT INTO product_ingredients (prod_id, ingr_id, req_qty) VALUES

/*sourdough bread*/
(1, 1, 2),  
(1, 5, 0.05), 
(1, 6, 0.02), 

/*whole wheat bread*/
(2, 1, 2),  
(2, 5, 0.05), 
(2, 6, 0.02), 

/*rye bread*/
(3, 1, 2),  
(3, 5, 0.05), 
(3, 6, 0.02), 

/* baguette*/
(4, 1, 2),  
(4, 5, 0.05), 
(4, 6, 0.02), 

/*plain bagel*/
(5, 1, 1.5), 
(5, 5, 0.05), 
(5, 6, 0.02), 

/*sesame bagel*/
(6, 1, 1.5), 
(6, 5, 0.05), 
(6, 6, 0.02), 
(6, 12, 0.01), 

/*everything bagel*/
(7, 1, 1.5), 
(7, 5, 0.05), 
(7, 6, 0.02), 
(7, 12, 0.01), 
(7, 13, 0.01), 

/*cinnamon raisin bagel*/
(8, 1, 1.5), 
(8, 5, 0.05), 
(8, 6, 0.02), 
(8, 7, 0.02), 
(8, 14, 0.05), 

/*poppy seed bagel*/
(9, 1, 1.5), 
(9, 5, 0.05), 
(9, 6, 0.02), 
(9, 13, 0.01), 

/*onion bagel*/
(10, 1, 1.5), 
(10, 5, 0.05), 
(10, 6, 0.02), 

/*blueberry muffin*/
(11, 1, 0.5), 
(11, 2, 0.3), 
(11, 3, 0.1), 
(11, 4, 0.1), 
(11, 9, 0.01), 
(11, 15, 0.1), 
(11, 8, 0.01), 

/*chocolate chip muffin*/
(12, 1, 0.5), 
(12, 2, 0.3), 
(12, 3, 0.1), 
(12, 4, 0.1), 
(12, 9, 0.01), 
(12, 10, 0.1), 
(12, 8, 0.01), 

/*banana nut muffin*/
(13, 1, 0.5), 
(13, 2, 0.3), 
(13, 3, 0.1), 
(13, 4, 0.1), 
(13, 9, 0.01), 

/*pumpkin spice muffin*/
(14, 1, 0.5), 
(14, 2, 0.3), 
(14, 3, 0.1), 
(14, 4, 0.1), 
(14, 9, 0.01), 
(14, 7, 0.02), 
(14, 8, 0.01), 

/*chocolate croissant*/
(15, 1, 1), 
(15, 3, 0.3), 
(15, 2, 0.2), 
(15, 4, 0.1), 
(15, 10, 0.1), 

/*danish pastry*/
(16, 1, 1), 
(16, 3, 0.3), 
(16, 2, 0.2), 
(16, 4, 0.1), 
(16, 7, 0.02), 
(16, 8, 0.01), 

/*cinnamon roll*/
(17, 1, 1), 
(17, 2, 0.2), 
(17, 3, 0.3), 
(17, 4, 0.1), 
(17, 7, 0.02), 
(17, 8, 0.01), 

/*apple turnover*/
(18, 1, 1), 
(18, 3, 0.3), 
(18, 2, 0.2), 
(18, 4, 0.1), 
(18, 8, 0.01), 

/*chocolate cake*/
(19, 1, 1), 
(19, 2, 0.4), 
(19, 3, 0.2), 
(19, 4, 0.2), 
(19, 16, 0.1), 
(19, 8, 0.01), 
(19, 9, 0.01), 

/*carrot cake*/
(20, 1, 1), 
(20, 2, 0.4), 
(20, 3, 0.2), 
(20, 4, 0.2), 
(20, 15, 0.2), 
(20, 7, 0.02), 
(20, 8, 0.01), 
(20, 9, 0.01);