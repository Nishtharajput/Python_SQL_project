
        -- Ecommerce Databse

CREATE DATABASE Ecommerce;
Use Ecommerce;

  -- First, create the table Customer with the appropriate columns:

CREATE TABLE Customer (
    Customer_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    Email VARCHAR(50),
    Phone_No VARCHAR(15),
    Address VARCHAR(100),
    Pin_code VARCHAR(10)
);

    -- Now, insert each record into the Customer table. Here’s the SQL code:

INSERT INTO Customer (Customer_ID, Name, City, Email, Phone_No, Address, Pin_code) VALUES
('CUST001', 'Laxmi Kashyap', 'Ghaziabad', 'laxmi.kashyap@example.com', '9876543210', '123, MG Road, Ghaziabad', '110001'),
('CUST002', 'Priya Sharma', 'Ghaziabad', 'priya.sharma@example.com', '9876543211', '456, MG Road, Ghaziabad', '400069'),
('CUST003', 'Nishtha Chauhan', 'Ghaziabad', 'nishtha.chauhan@example.com', '9876543212', '789, CG Road, Ghaziabad', '380009'),
('CUST004', 'Sunita Rao', 'Bangalore', 'sunita.rao@example.com', '9876543213', '101, MG Road, Bangalore', '560001'),
('CUST005', 'Ravi Verma', 'Chennai', 'ravi.verma@example.com', '9876543214', '202, Anna Nagar, Chennai', '600040'),
('CUST006', 'Kiran Desai', 'Pune', 'kiran.desai@example.com', '9876543215', '303, FC Road, Pune', '411005'),
('CUST007', 'Neha Gupta', 'Kolkata', 'neha.gupta@example.com', '9876543216', '404, Park Street, Kolkata', '700016'),
('CUST008', 'Vikram Singh', 'Jaipur', 'vikram.singh@example.com', '9876543217', '505, MI Road, Jaipur', '302001'),
('CUST009', 'Meera Nair', 'Kochi', 'meera.nair@example.com', '9876543218', '606, MG Road, Kochi', '682016'),
('CUST010', 'Sanjay Mehta', 'Hyderabad', 'sanjay.mehta@example.com', '9876543219', '707, Banjara Hills, Hyderabad', '500034'),
('CUST011', 'Aarti Patel', 'Surat', 'aarti.patel@example.com', '9876543220', '808, APMC Road, Surat', '395007'),
('CUST012', 'Rohit Kumar', 'Ahmedabad', 'rohit.kumar@example.com', '9876543221', '909, Ashram Road, Ahmedabad', '380009'),
('CUST013', 'Ananya Sen', 'Delhi', 'ananya.sen@example.com', '9876543222', '1010, Connaught Place, Delhi', '110001'),
('CUST014', 'Arjun Kapoor', 'Mumbai', 'arjun.kapoor@example.com', '9876543223', '1111, Marine Drive, Mumbai', '400020'),
('CUST015', 'Maya Patel', 'Bangalore', 'maya.patel@example.com', '9876543224', '1212, Brigade Road, Bangalore', '560025'),
('CUST016', 'Gaurav Mehra', 'Chennai', 'gaurav.mehra@example.com', '9876543225', '1313, Kotturpuram, Chennai', '600085'),
('CUST017', 'Sanya Kapoor', 'Hyderabad', 'sanya.kapoor@example.com', '9876543226', '1414, Banjara Hills, Hyderabad', '500034'),
('CUST018', 'Ravi Kumar', 'Pune', 'ravi.kumar@example.com', '9876543227', '1515, JM Road, Pune', '411001'),
('CUST019', 'Isha Agarwal', 'Jaipur', 'isha.agarwal@example.com', '9876543228', '1616, Raja Park, Jaipur', '302004'),
('CUST020', 'Amit Singh', 'Kolkata', 'amit.singh@example.com', '9876543229', '1717, New Alipore, Kolkata', '700053');


-- First, create the table Product with the appropriate columns:

CREATE TABLE Product (
    Product_ID VARCHAR(10) PRIMARY KEY,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Sub_category VARCHAR(50),
    Original_Price DECIMAL(10, 2),
    Selling_Price DECIMAL(10, 2),
    Stock INT
);

           -- Now, insert each record into the Product table. Here’s the SQL code:

INSERT INTO Product (Product_ID, Product_Name, Category, Sub_category, Original_Pprice, Selling_Price, Stock) VALUES
('P001', 'Samsung Galaxy S21', 'Electronics', 'Mobile Phones', 70000.0, 65000.0, 50),
('P002', 'Apple MacBook Air', 'Electronics', 'Laptops', 90000.0, 85000.0, 30),
('P003', 'Nike Air Max 270', 'Footwear', 'Sports Shoes', 12000.0, 11000.0, 100),
('P004', 'Sony WH-1000XM4', 'Electronics', 'Headphones', 30000.0, 28000.0, 25),
('P005', 'Adidas Ultraboost', 'Footwear', 'Running Shoes', 15000.0, 14000.0, 75),
('P006', 'LG 55 Inch 4K TV', 'Electronics', 'Televisions', 80000.0, 75000.0, 20),
('P007', 'Adidas Ultraboost 21', 'Footwear', 'Running Shoes', 17999.0, 14999.0, 60),
('P008', 'Ray-Ban Aviator', 'Accessories', 'Sunglasses', 11290.0, 9990.0, 120),
('P009', 'Canon EOS 1500D', 'Electronics', 'Cameras', 39995.0, 34995.0, 25),
('P010', 'Philips Air Fryer', 'Home Appliances', 'Kitchen Appliances', 9495.0, 8495.0, 40);


-- First, create the table Order_details with the appropriate columns:

CREATE TABLE Order_details (
    Order_ID INT PRIMARY KEY,
    Customer_ID VARCHAR(10),
    Product_ID VARCHAR(10),
    Quantity DECIMAL(5, 2),
    Total_Price DECIMAL(10, 2),
    Payment_Mode VARCHAR(50),
    Order_Date DATETIME,
    Order_Status VARCHAR(50)
);

    -- Now, insert each record into the Order_details table. Here’s the SQL code:

INSERT INTO Order_details (Order_ID, Customer_ID, Product_ID, Quantity, Total_Price, Payment_Mode, Order_Date, Order_Status) VALUES
(1, 'CUST001', 'P001', 1.0, 65000.0, 'Credit Card', '2024-08-01 14:30:00', 'Shipped'),
(2, 'CUST002', 'P002', 1.0, 85000.0, 'Debit Card', '2024-08-02 15:00:00', 'Delivered'),
(3, 'CUST003', 'P003', 2.0, 22000.0, 'Net Banking', '2024-08-03 16:15:00', 'Shipped'),
(4, 'CUST004', 'P004', 1.0, 28000.0, 'UPI', '2024-08-04 10:00:00', 'Pending'),
(5, 'CUST005', 'P005', 1.0, 14000.0, 'Cash on Delivery', '2024-08-05 11:45:00', 'Delivered'),
(6, 'CUST006', 'P006', 1.0, 75000.0, 'Credit Card', '2024-08-06 12:30:00', 'Shipped'),
(7, 'CUST007', 'P007', 3.0, 10500.0, 'Debit Card', '2024-08-07 13:00:00', 'Delivered'),
(8, 'CUST008', 'P008', 5.0, 6000.0, 'Net Banking', '2024-08-08 14:15:00', 'Cancelled'),
(9, 'CUST009', 'P009', 1.0, 58000.0, 'UPI', '2024-08-09 09:30:00', 'Shipped'),
(10, 'CUST010', 'P010', 2.0, 46000.0, 'Credit Card', '2024-08-10 10:00:00', 'Delivered'),
(11, 'CUST011', 'P001', 2.0, 130000.0, 'Credit Card', '2024-06-15 11:30:00', 'Delivered'),
(12, 'CUST012', 'P003', 1.0, 11000.0, 'Debit Card', '2024-07-22 12:45:00', 'Shipped'),
(13, 'CUST013', 'P005', 3.0, 42000.0, 'Net Banking', '2024-08-10 13:50:00', 'Pending'),
(14, 'CUST014', 'P007', 2.0, 21000.0, 'UPI', '2024-09-05 14:00:00', 'Shipped'),
(15, 'CUST015', 'P009', 1.0, 58000.0, 'Cash on Delivery', '2024-10-12 15:10:00', 'Delivered'),
(16, 'CUST016', 'P002', 1.0, 85000.0, 'Credit Card', '2024-11-18 16:20:00', 'Cancelled'),
(17, 'CUST017', 'P004', 1.0, 28000.0, 'Debit Card', '2024-12-03 17:30:00', 'Shipped'),
(18, 'CUST018', 'P006', 2.0, 150000.0, 'Net Banking', '2024-11-25 18:40:00', 'Delivered'),
(19, 'CUST019', 'P008', 4.0, 23980.0, 'UPI', '2024-10-08 19:50:00', 'Pending'),
(20, 'CUST020', 'P010', 1.0, 23000.0, 'Cash on Delivery', '2024-12-15 20:00:00', 'Delivered'),
(21, 'CUST007', 'P002', 2.0, 170000.0, 'Credit Card', '2024-08-11 11:00:00', 'Delivered'),
(22, 'CUST003', 'P003', 1.0, 11000.0, 'Debit Card', '2024-08-12 12:30:00', 'Shipped'),
(23, 'CUST002', 'P004', 3.0, 84000.0, 'Net Banking', '2024-08-13 13:45:00', 'Pending'),
(24, 'CUST002', 'P005', 2.0, 28000.0, 'UPI', '2024-08-14 14:15:00', 'Shipped'),
(25, 'CUST002', 'P006', 1.0, 75000.0, 'Cash on Delivery', '2024-08-15 15:00:00', 'Delivered'),
(26, 'CUST005', 'P007', 4.0, 14000.0, 'Credit Card', '2024-08-16 16:30:00', 'Cancelled'),
(27, 'CUST002', 'P008', 3.0, 29970.0, 'Debit Card', '2024-08-17 17:15:00', 'Shipped'),
(28, 'CUST007', 'P009', 2.0, 116000.0, 'Net Banking', '2024-08-18 18:00:00', 'Delivered'),
(29, 'CUST003', 'P010', 1.0, 8495.0, 'UPI', '2024-08-19 09:45:00', 'Shipped'),
(30, 'CUST005', 'P001', 1.0, 65000.0, 'Credit Card', '2024-08-20 10:15:00', 'Pending'),
(31, 'CUST010', 'P001', 2.0, 170000.0, 'Credit Card', '2024-09-11 11:00:00', 'Delivered'),
(32, 'CUST010', 'P003', 1.0, 11000.0, 'Debit Card', '2024-08-12 12:30:00', 'Shipped'),
(33, 'CUST010', 'P002', 3.0, 84000.0, 'Net Banking', '2024-06-13 13:45:00', 'Pending'),
(34, 'CUST008', 'P005', 2.0, 28000.0, 'UPI', '2024-05-14 14:15:00', 'Shipped'),
(35, 'CUST008', 'P006', 1.0, 75000.0, 'Cash on Delivery', '2024-05-15 15:00:00', 'Delivered'),
(36, 'CUST007', 'P007', 4.0, 14000.0, 'Credit Card', '2024-09-16 16:30:00', 'Cancelled'),
(37, 'CUST003', 'P004', 3.0, 29970.0, 'Debit Card', '2024-08-17 17:15:00', 'Shipped'),
(38, 'CUST004', 'P009', 2.0, 116000.0, 'Net Banking', '2024-09-18 18:00:00', 'Delivered'),
(39, 'CUST001', 'P008', 1.0, 8495.0, 'UPI', '2024-08-19 09:45:00', 'Shipped'),
(40, 'CUST001', 'P001', 1.0, 65000.0, 'Credit Card', '2024-08-20 10:15:00', 'Pending');
