CREATE DATABASE IF NOT EXISTS neighborhood_db;
USE neighborhood_db;

CREATE TABLE IF NOT EXISTS Transactions (
    transactionId INT AUTO_INCREMENT PRIMARY KEY,
    itemId INT NOT NULL,
    initiatorUserId VARCHAR(50) NOT NULL,
    receiverUserId VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'pending',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO Transactions (itemId, initiatorUserId, receiverUserId, status, createdAt, updatedAt)
VALUES
    (8, '4', '6', 'pending', '2023-01-01 00:00:00', '2023-01-01 00:00:00'),
    (10, '5', '7', 'accepted', '2023-02-14 09:30:00', '2023-02-14 10:00:00'),
    (3, '2', '1', 'completed', '2023-03-10 15:00:00', '2023-03-11 08:45:00'),
    (15, '9', '3', 'cancelled', '2023-04-01 12:00:00', '2023-04-02 09:15:00'),
    (6, '7', '2', 'pending', '2023-05-05 18:45:00', '2023-05-05 18:45:00'),
    (11, '1', '8', 'rejected', '2023-06-20 11:00:00', '2023-06-20 11:30:00'),
