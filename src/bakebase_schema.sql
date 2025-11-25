/*CIS 421 Database Management Systems Final Project
Lian Flynn-Mitchell*/

/*drop if db already exists*/
DROP SCHEMA IF EXISTS bakebase;

CREATE SCHEMA bakebase;
USE bakebase;

/*Table: products*/
CREATE TABLE products (
    product_id      INT NOT NULL AUTO_INCREMENT,
    name            VARCHAR(50) NOT NULL,
    price           DECIMAL(10,2) NOT NULL,
    stock           INT NOT NULL,
    
    PRIMARY KEY (product_id)
);

/*Table: customers*/
CREATE TABLE customers (
    customer_id     INT NOT NULL AUTO_INCREMENT,
    fname           VARCHAR(50) NOT NULL,   
    lname           VARCHAR(50) NOT NULL, 
    phone           VARCHAR(50) NOT NULL,
    email           VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (customer_id)
);

/*Table: orders*/
CREATE TABLE orders (
    order_id        INT NOT NULL AUTO_INCREMENT,
    cstmr_id        INT NOT NULL,   
    order_date      DATETIME NOT NULL, 
    due_date        DATETIME NOT NULL,
    
    PRIMARY KEY (order_id),
    CONSTRAINT fk_orders_customers FOREIGN KEY (cstmr_id) references customers(customer_id)
);

/*Table: order_items*/
CREATE TABLE order_items (
    ord_id          INT NOT NULL,
    prod_id         INT NOT NULL,   
    quantity        INT NOT NULL, 

    PRIMARY KEY (ord_id, prod_id),
    CONSTRAINT fk_order_items_orders FOREIGN KEY (ord_id) references orders(order_id),
    CONSTRAINT fk_order_items_products FOREIGN KEY (prod_id) references products(product_id)
);

/*Table: ingredients*/
CREATE TABLE ingredients (
    ingredient_id   INT NOT NULL AUTO_INCREMENT,
    name            VARCHAR(50) NOT NULL,   
    quantity        INT NOT NULL, 
    unit            VARCHAR(50) NOT NULL,
    
    PRIMARY KEY (ingredient_id)
);

/*Table: product_ingredients*/
CREATE TABLE product_ingredients (
    prod_id         INT NOT NULL,
    ingr_id         INT NOT NULL,   
    req_qty         INT NOT NULL, 

    PRIMARY KEY (prod_id, ingr_id),
    CONSTRAINT fk_product_ingredients_products FOREIGN KEY (prod_id) references products(product_id),
    CONSTRAINT fk_product_ingredients_ingredients FOREIGN KEY (ingr_id) references ingredients(ingredient_id)
);
