CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    books_name VARCHAR,
    genre VARCHAR
);

INSERT INTO books(
    books_name,
    genre
)
VALUES ('The Da Vinci Code','mystery'),
    ('gone girl','mystery'),
    ('big little lies','mystery'),
    ('pride and the prejudice','romance'),
    ('dune', 'science fiction'),
    ('steve jobs','autobiography'),
     ('Dune', 'Science Fiction'),
    ('Pride and Prejudice', 'Romance'),
    ('The Girl with the Dragon Tattoo', 'Thriller'),
    ('Steve Jobs', 'Biography'),
    ('The Subtle Art of Not Giving a F*ck', 'Self-Help'),
    ('1984', 'Science Fiction'),
    ('To Kill a Mockingbird', 'Classic'),
    ('The Catcher in the Rye', 'Coming-of-Age'),
    ('The Great Gatsby', 'Literary Fiction'),
    ('Harry Potter and the Sorcerer''s Stone', 'Fantasy'),
    ('The Hobbit', 'Fantasy'),
    ('The Lord of the Rings', 'Fantasy'),
    ('The Hunger Games', 'Dystopian'),
    ('The Fault in Our Stars', 'Young Adult'),
    ('Gone with the Wind', 'Historical Fiction'),
    ('The Shining', 'Horror'),
    ('The Silence of the Lambs', 'Psychological Thriller'),
    ('Jurassic Park', 'Science Fiction'),
    ('The Martian', 'Science Fiction'),
    ('The Hitchhiker''s Guide to the Galaxy', 'Science Fiction'),
    ('A Game of Thrones', 'Fantasy'),
    ('The Da Vinci Code', 'Mystery'),
    ('The Alchemist', 'Philosophical Fiction'),
    ('The Chronicles of Narnia', 'Fantasy'),
    ('Wuthering Heights', 'Gothic Fiction'),
    ('Anna Karenina', 'Classic'),
    ('Crime and Punishment', 'Literary Fiction'),
    ('Moby-Dick', 'Adventure'),
    ('Les Misérables', 'Historical Fiction'); 

    SELECT * FROM books 

    ALTER TABLE books 
    ADD COLUMN popularity_rank INT;

    SELECT * FROM books ;

    UPDATE books 
    SET popularity_rank = 1
    WHERE book_id = 1;

    UPDATE books
    SET popularity_rank = 2 
    WHERE book_id = 2;

    UPDATE books
    SET popularity_rank = 3
    WHERE book_id = 11;

    UPDATE books
    SET popularity_rank = 4
    WHERE book_id = 33;

    UPDATE books
    SET popularity_rank = 5
    WHERE book_id =32;

    UPDATE books
    SET popularity_rank = 6
    WHERE book_id =31;

    UPDATE books
    SET popularity_rank = 8
    WHERE book_id =30;

    UPDATE books
    SET popularity_rank = 9
    WHERE book_id =29;

    UPDATE books
    SET popularity_rank = 10
    WHERE book_id = 28;

    UPDATE books
    SET popularity_rank = 11
    WHERE book_id =27;

    UPDATE books
    SET popularity_rank = 12
    WHERE book_id = 26;

    UPDATE books
    SET popularity_rank = 13
    WHERE book_id =25;

    UPDATE books
    SET popularity_rank = 14
    WHERE book_id = 24;

    UPDATE books
    SET popularity_rank = 15
    WHERE book_id =23;

    UPDATE books
    SET popularity_rank = 16
    WHERE book_id = 22;

    UPDATE books
    SET popularity_rank = 17
    WHERE book_id = 34;

    UPDATE books
    SET popularity_rank = 18
    WHERE book_id =20;

    UPDATE books
    SET popularity_rank = 19
    WHERE book_id =21;

    UPDATE books
    SET popularity_rank = 20
    WHERE book_id = 19;

    UPDATE books
    SET popularity_rank = 21
    WHERE book_id =18;

    UPDATE books
    SET popularity_rank = 22
    WHERE book_id =17;

    UPDATE books
    SET popularity_rank = 23
    WHERE book_id = 15;

    UPDATE books
    SET popularity_rank = 24
    WHERE book_id =16;

    UPDATE books
    SET popularity_rank = 25
    WHERE book_id = 14;

    UPDATE books
    SET popularity_rank = 26
    WHERE book_id = 13;

    UPDATE books
    SET popularity_rank = 27
    WHERE book_id = 10;

    UPDATE books
    SET popularity_rank = 28
    WHERE book_id = 12;

    UPDATE books
    SET popularity_rank = 29
    WHERE book_id =9;

    UPDATE books
    SET popularity_rank = 30
    WHERE book_id = 8;

    UPDATE books
    SET popularity_rank = 31
    WHERE book_id =7;

    UPDATE books
    SET popularity_rank = 32
    WHERE book_id =5;

    UPDATE books
    SET popularity_rank = 33
    WHERE book_id =6;

    UPDATE books
    SET popularity_rank = 34
    WHERE book_id =3;

    UPDATE books
    SET popularity_rank = 35
    WHERE book_id = 4;

     SELECT * FROM books 

     UPDATE books
    SET popularity_rank = 7
    WHERE book_id = 35 ;


CREATE TABLE author (
    auth_id SERIAL PRIMARY KEY,
    auth_name VARCHAR,
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);


SELECT * FROM author

 SELECT * FROM books

INSERT INTO author 
    (auth_name,
    book_id)

    VALUES
    ('Dan Brown',1),
    ('Gillian Flynn',2),
     ('Liane Moriarty', 3),
    ('Jane Austen', 4),
    ('Frank Herbert', 5),
    ('Walter Isaacson', 6),
    ('George Orwell', 7),
    ('Harper Lee', 8),
    ('J.D. Salinger', 9),
    ('F. Scott Fitzgerald', 10),
    ('J.K. Rowling', 11),
    ('J.R.R. Tolkien', 12),
    ('J.R.R. Tolkien', 13),
    ('Suzanne Collins', 14),
    ('John Green', 15),
    ('Margaret Mitchell', 16),
    ('Stephen King', 17),
    ('Thomas Harris', 18),
    ('Michael Crichton', 19),
    ('Andy Weir', 20),
    ('Douglas Adams', 21),
    ('George R.R. Martin', 22),
    ('Paulo Coelho', 23),
    ('C.S. Lewis', 24),
    ('Emily Brontë', 25),
    ('Leo Tolstoy', 26),
    ('Fyodor Dostoevsky', 27),
    ('Herman Melville', 28),
    ('Victor Hugo', 29),
    ('Agatha Christie', 30),
    ('Arthur Conan Doyle', 31),
    ('Paula Hawkins', 32),
    ('Mark Manson', 33),
    ('Gareth James', 34),
    ('Aurélien Géron', 35);


SELECT * FROM books;
SELECT * FROM author;


CREATE TABLE book_sales (
    book_sale_id SERIAL PRIMARY KEY,
    books_sold_qty INT,
    books_profit_rs INT,
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);


SELECT * FROM book_sales;


INSERT INTO book_sales 
    (books_sold_qty,
    books_profit_rs,
    book_id)

     VALUES 
     (5000,102500,1),
     (10203,250000,2),
     (2000,100000,3),
     (1850,250000,4),
     (2500,300000,5),
      (1023, 589420, 6),
    (1156, 612300, 7),
    (913, 450620, 8),
    (837, 392800, 9),
    (1105, 552100, 10),
    (978, 493500, 11),
    (864, 431200, 12),
    (1192, 598200, 13),
    (1057, 527800, 14),
    (1265, 633200, 15),
    (1318, 658400, 16),
    (935, 477900, 17),
    (1092, 547800, 18),
    (1130, 565200, 19),
    (1224, 612000, 20),
    (887, 443500, 21),
    (945, 472800, 22),
    (1045, 522500, 23),
    (956, 482300, 24),
    (1168, 584000, 25),
    (1275, 637800, 26),
    (1337, 668500, 27),
    (919, 456900, 28),
    (1002, 501200, 29),
    (1108, 554200, 30),
    (892, 448100, 31),
    (986, 493200, 32),
    (1085, 542800, 33),
    (1211, 605900, 34),
    (1305, 652500, 35);



SELECT * FROM book_sales;



/*NOW IF ANYONE WANT TO READ MORE ABOUT 
SPECIFIC AUTHOR THEN THEY CAN ALSO GO FOR SOME OTHER 
BOOKS WRITEN BY THE AUTHOR*/


CREATE TABLE books_related_to_authors (
    ids SERIAL PRIMARY KEY,
    auth_id INT,
    books_to_read VARCHAR,
    auth_websites VARCHAR,
    FOREIGN KEY (auth_id) REFERENCES author(auth_id)
);

SELECT * FROM books_related_to_authors

INSERT INTO books_related_to_authors (
    auth_id,
    books_to_read,
    auth_websites)

VALUES 
    (1, '1. The Da Vinci Code, 2. Angels & Demons, 3. Inferno', 'http://www.danbrown.com'),
    (2, '1. Gone Girl, 2. Sharp Objects, 3. Dark Places', 'http://www.gillian-flynn.com'),
    (3, '1. Big Little Lies, 2. Nine Perfect Strangers, 3. Truly Madly Guilty', 'http://www.lianemoriarty.com'),
    (4, '1. Pride and Prejudice, 2. Sense and Sensibility, 3. Emma', 'http://www.janeausten.org'),
    (5, '1. Dune, 2. Children of Dune, 3. God Emperor of Dune', 'http://www.dunenovels.com'),
    (6, '1. Steve Jobs, 2. Einstein: His Life and Universe, 3. Leonardo da Vinci', 'http://www.walterisaacson.com'),
    (7, '1. 1984, 2. Animal Farm, 3. Nineteen Eighty-Four', 'http://www.georgeorwell.org'),
    (8, '1. To Kill a Mockingbird, 2. Go Set a Watchman, 3. To Kill a Mockingbird (Graphic Novel)', 'http://www.harperlee.com'),
    (9, '1. The Catcher in the Rye, 2. Franny and Zooey, 3. Nine Stories', 'http://www.jdsalinger.com'),
    (10, '1. The Great Gatsby, 2. Tender Is the Night, 3. This Side of Paradise', 'http://www.fscottfitzgerald.com'),
    (11, '1. Harry Potter and the Sorcerer''s Stone, 2. Harry Potter and the Chamber of Secrets, 3. Harry Potter and the Prisoner of Azkaban', 'http://www.jkrowling.com'),
    (12, '1. The Hobbit, 2. The Lord of the Rings, 3. The Silmarillion', 'http://www.tolkien.co.uk'),
    (13, '1. The Hobbit, 2. The Lord of the Rings, 3. The Silmarillion', 'http://www.tolkien.co.uk'), -- Duplicate entry for J.R.R. Tolkien
    (14, '1. The Hunger Games, 2. Catching Fire, 3. Mockingjay', 'http://www.suzannecollinsbooks.com'),
    (15, '1. The Fault in Our Stars, 2. Looking for Alaska, 3. Paper Towns', 'http://www.johngreenbooks.com'),
    (16, '1. Gone with the Wind, 2. Lost Laysen, 3. Scarlett', 'http://www.margaretmitchellhouse.com'),
    (17, '1. The Shining, 2. It, 3. Doctor Sleep', 'http://www.stephenking.com'),
    (18, '1. Red Dragon, 2. The Silence of the Lambs, 3. Hannibal', 'http://www.thomasharris.com'),
    (19, '1. Jurassic Park, 2. The Andromeda Strain, 3. Congo', 'http://www.michaelcrichton.com'),
    (20, '1. The Martian, 2. Artemis, 3. Project Hail Mary', 'http://www.andyweirauthor.com'),
    (21, '1. The Hitchhiker''s Guide to the Galaxy, 2. Dirk Gently''s Holistic Detective Agency, 3. Mostly Harmless', 'http://www.douglasadams.com'),
    (22, '1. A Game of Thrones, 2. A Clash of Kings, 3. A Storm of Swords', 'http://www.georgerrmartin.com'),
    (23, '1. The Alchemist, 2. Eleven Minutes, 3. Brida', 'http://www.paulocoelhoblog.com'),
    (24, '1. The Lion, the Witch and the Wardrobe, 2. Prince Caspian, 3. The Voyage of the Dawn Treader', 'http://www.cslewis.com'),
    (25, '1. Wuthering Heights, 2. Agnes Grey, 3. The Tenant of Wildfell Hall', 'http://www.emilybronte.org'),
    (26, '1. War and Peace, 2. Anna Karenina, 3. The Death of Ivan Ilyich', 'http://www.leotolstoy.org'),
    (27, '1. Crime and Punishment, 2. The Brothers Karamazov, 3. The Idiot', 'http://www.dostoyevsky.ru'),
    (28, '1. Moby-Dick, 2. Billy Budd, 3. Typee', 'http://www.hermanmelville.com'),
    (29, '1. Les Misérables, 2. The Hunchback of Notre-Dame, 3. The Last Day of a Condemned Man', 'http://www.victorhugo.com'),
    (30, '1. Murder on the Orient Express, 2. The Murder of Roger Ackroyd, 3. And Then There Were None', 'http://www.agathachristie.com'),
    (31, '1. The Adventures of Sherlock Holmes, 2. The Hound of the Baskervilles, 3. The Sign of the Four', 'http://www.arthurconandoyle.com'),
    (32, '1. The Girl on the Train, 2. Into the Water, 3. A Slow Fire Burning', 'http://www.paulahawkinsbooks.com'),
    (33, '1. The Subtle Art of Not Giving a F*ck, 2. Everything Is F*cked, 3. Love Is Not Enough', 'http://www.markmanson.net'),
    (34, '1. An Introduction to Statistical Learning, 2. The Elements of Statistical Learning, 3. Machine Learning: A Probabilistic Perspective', 'http://www.garethjames.net'),
    (35, '1. Hands-On Machine Learning with Scikit-Learn, Keras, and TensorFlow, 2. Deep Learning, 3. Python Machine Learning', 'http://www.oreilly.com');


SELECT * FROM books_related_to_authors

SELECT * FROM author;

SELECT * FROM book_sales;

SELECT * FROM books;