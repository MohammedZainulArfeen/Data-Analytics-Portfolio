-- Insert Users
INSERT INTO users (name, email, password, phone, address) VALUES
('John Doe', 'john@example.com', 'password123', '1234567890', '123 Main St, NY'),
('Jane Smith', 'jane@example.com', 'password123', '0987654321', '456 Elm St, CA'),
('Alice Johnson', 'alice@example.com', 'password123', '9876543210', '789 Oak St, TX');

-- Insert Categories
INSERT INTO categories (name, description) VALUES
('Electronics', 'Devices and gadgets'),
('Clothing', 'Men and Women clothing'),
('Books', 'Various kinds of books');

-- Insert Products
INSERT INTO products (name, description, price, stock, category_id) VALUES
('Laptop', 'High performance laptop', 899.99, 10, 1),
('Smartphone', 'Latest model smartphone', 499.99, 20, 1),
('T-shirt', '100% Cotton T-shirt', 19.99, 50, 2),
('Novel', 'Bestselling fiction novel', 9.99, 100, 3);

-- Insert Orders
INSERT INTO orders (user_id, total_price, status) VALUES
(1, 519.98, 'Processing'),
(2, 899.99, 'Pending'),
(3, 19.99, 'Shipped');

-- Insert Order Items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 2, 1, 499.99),
(1, 3, 1, 19.99),
(2, 1, 1, 899.99),
(3, 3, 1, 19.99);

-- Insert Payments
INSERT INTO payments (order_id, payment_method, payment_status, transaction_id) VALUES
(1, 'Credit Card', 'Completed', 'TXN123456'),
(2, 'PayPal', 'Pending', 'TXN123457'),
(3, 'Cash on Delivery', 'Completed', NULL);

-- Insert Shipments
INSERT INTO shipments (order_id, tracking_number, shipping_status, estimated_delivery) VALUES
(1, 'TRACK123456', 'Dispatched', '2025-02-20'),
(2, 'TRACK123457', 'Pending', '2025-02-25'),
(3, 'TRACK123458', 'In Transit', '2025-02-18');
