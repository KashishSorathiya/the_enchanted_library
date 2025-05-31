
-- Database: enchanted_library

-- Table: users
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'librarian', 'scholar', 'guest') NOT NULL
);

-- Table: books
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100),
    genre VARCHAR(50),
    book_type ENUM('general', 'rare', 'ancient') DEFAULT 'general',
    status ENUM('Available', 'Reserved', 'Borrowed', 'RestorationNeeded') DEFAULT 'Available'
);

-- Table: borrow_records
CREATE TABLE borrow_records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    book_id INT,
    borrow_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Table: reservations
CREATE TABLE reservations (
    reservation_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    book_id INT,
    reservation_date DATE,
    status ENUM('Active', 'Completed', 'Cancelled') DEFAULT 'Active',
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Table: notifications
CREATE TABLE notifications (
    notification_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    message TEXT,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Table: returns
CREATE TABLE returns (
    return_id INT AUTO_INCREMENT PRIMARY KEY,
    record_id INT,
    fine_amount DECIMAL(10,2),
    FOREIGN KEY (record_id) REFERENCES borrow_records(record_id)
);
