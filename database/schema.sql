CREATE TABLE IF NOT EXISTS utilizatori (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nume VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    creat_la TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO utilizatori (nume, email) VALUES
('Test User 1', 'test1@exemplu.ro'),
('Test User 2', 'test2@exemplu.ro');