INSERT INTO `mobile store`(`id`, `brand`, `model`, `price`, `stock`) VALUES (1, 'Samsung', 'Galaxy M14', 12000, 30),
(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),
(4, 'Samsung', 'Galaxy A23', 18000, 10);


SELECT * FROM `mobile store` WHERE price >13000 OR stock < 15;