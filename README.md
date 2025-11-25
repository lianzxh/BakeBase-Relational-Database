# 🧁 BakeBase Relational Database Design

BakeBase is a mini relational database that aims to manage the products, customers, orders, and ingredients of a bakery shop. The objectives of the BakeBase system are to streamline bakery operations, manage stock records, generate sales reports, and enhance management decision making.

This database system was created as a final project at the University of Michigan-Dearborn CIS 421 - Database Management Systems Fall'24 course. The goal of this project was to design a fully functioning relational database...

# Documentation

This repository includes all code, documentation, reports, and diagrams use throughout the design process.
- [Project Plan](/docs/Project%20Plan.pdf)
- [Conceptual Modeling](/docs/Conceptual%20Model.pdf)
- [Relational Model](/docs/CIS421RelationalModel.png)
- [SQL Queries Demo](/docs/SQL%20Queries%20(Implementation).pdf)

## Key Entities & Relationships

### Key Entities

| Entity                  | Description                                               |
| ----------------------- | --------------------------------------------------------- |
| **PRODUCTS**            | Manages items sold in the bakery (breads, cakes, etc.)    |
| **CUSTOMERS**           | Keeps track of customer information                       |
| **INGREDIENTS**         | Monitors the bakery’s stock and inventory for ingredients |
| **ORDERS**              | Records orders placed by customers                        |
| **ORDER_ITEMS**         | Associates products with their orders                     |
| **PRODUCT_INGREDIENTS** | Organizes the required ingredients for different products |


### Relationships

- **PRODUCTS & ORDER_ITEMS (1:N)** — Each product can appear in multiple order items, but each order item references a single product.

- **CUSTOMERS & ORDERS (1:N)** — A customer can place multiple orders, but each order belongs to a single customer.

- **ORDERS & ORDER_ITEMS (1:N)** — Each order can have multiple items, but every order item belongs to a single order.

- **PRODUCTS & PRODUCT_INGREDIENTS (1:N)** — Each product can require multiple ingredients, but each entry in PRODUCT_INGREDIENTS refers to a specific ingredient for a specific product.

- **INGREDIENTS & PRODUCT_INGREDIENTS (1:N)** — Each ingredient can be used in many products, and each entry in PRODUCT_INGREDIENTS refers to a specific ingredient for a specific product.


## Diagrams

### 📍 Entity-Relationship Schema

![ER-Diagram](/docs/CIS421FinalProjectER.png)

### 📍 Relational Model

![Relational-Model](/docs/CIS421RelationalModel.png)