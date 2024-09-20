CREATE TABLE Product (
    Product_id NUMBER PRIMARY KEY,
    Product_name VARCHAR2(50) NOT NULL,
    Price NUMBER(6,2) CHECK (Price >= 0)
);

CREATE TABLE Customer (
    Customer_id NUMBER PRIMARY KEY,
    Customer_name VARCHAR2(50) NOT NULL,
    Customer_Tel NUMBER
);

CREATE TABLE Order_details (
    Customer_id NUMBER,                       -- Change to NUMBER to match Customer_id data type
    Product_id NUMBER,                        -- Change to NUMBER to match Product_id data type
    Quantity NUMBER,
    Total_amount NUMBER,
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),  -- Correct foreign key definition
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)       -- Correct foreign key definition
);


-- Add a column Category (VARCHAR2(20)) to the PRODUCT table:
ALTER TABLE PRODUCT
ADD Category VARCHAR2(20);


-- Add a column OrderDate (DATE) to the ORDERS table with SYSDATE as the default value:
ALTER TABLE ORDERS
ADD OrderDate DATE DEFAULT SYSDATE;

    

    
