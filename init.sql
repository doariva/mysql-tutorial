USE study;

-- ユーザーテーブルの作成
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT,
    address VARCHAR(255),
    phone_number VARCHAR(20),
    signup_date DATE,
    is_active BOOLEAN,
    last_login DATETIME
);

-- 注文テーブルの作成
CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- ユーザーデータの挿入
INSERT INTO users (name, email, age, address, phone_number, signup_date, is_active, last_login) VALUES 
('Alice', 'alice@example.com', 30, '123 Maple St', '555-1234', '2022-01-15', TRUE, '2023-09-15 08:45:30'),
('Bob', 'bob@example.com', 25, '456 Oak St', '555-2345', '2021-11-10', FALSE, '2023-06-20 12:30:00'),
('Charlie', 'charlie@example.com', 35, '789 Pine St', '555-3456', '2020-05-22', TRUE, '2023-07-18 09:10:45'),
('David', 'david@example.com', 28, '321 Birch St', '555-4567', '2023-03-18', TRUE, '2023-09-01 11:15:20'),
('Eva', 'eva@example.com', 22, '654 Cedar St', '555-5678', '2022-08-09', FALSE, '2023-04-12 16:00:00'),
('Frank', 'frank@example.com', 45, '987 Walnut St', '555-6789', '2019-02-25', TRUE, '2023-05-27 07:50:00'),
('Grace', 'grace@example.com', 33, '159 Spruce St', '555-7890', '2021-07-30', TRUE, '2023-08-14 13:22:10'),
('Henry', 'henry@example.com', 27, '753 Redwood St', '555-8901', '2020-12-15', FALSE, '2023-03-11 10:05:55'),
('Ivy', 'ivy@example.com', 29, '852 Sycamore St', '555-9012', '2022-04-01', TRUE, '2023-09-05 08:25:10'),
('Jack', 'jack@example.com', 40, '963 Fir St', '555-0123', '2018-09-20', TRUE, '2023-07-30 18:35:00');

-- 注文データの挿入
INSERT INTO orders (user_id, order_date, amount) VALUES
(1, '2023-09-10', 150.75),
(1, '2023-10-01', 200.50),
(2, '2023-08-22', 120.00),
(3, '2023-07-15', 300.20),
(3, '2023-09-10', 80.50),
(4, '2023-09-25', 50.00),
(5, '2023-06-30', 175.00),
(5, '2023-07-05', 220.15),
(6, '2023-05-17', 90.10),
(7, '2023-08-03', 110.75);

