INSERT INTO `books`(`id`, `title`, `author`, `genre`, `price`, `copies_sold`) VALUES 
(1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);

INSERT INTO `bestsellers`(`id`, `title`, `author`, `genre`, `price`, `copies_sold`) VALUES 
(4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);


SELECT title , author FROM books
UNION
SELECT title , author FROM bestsellers; 


SELECT title , author FROM books
UNION
SELECT title , author FROM bestsellers; 

SELECT AVG(price) AS average_price
FROM books;

SELECT title AS "Book Title", author AS "Written By"
FROM books;

