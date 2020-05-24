1590347160988 : CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));

1590347360300 : INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;

1590347457655 : ALTER TABLE books ADD COLUMN bookshelf_id INT;

1590347808886 : UPDATE books SET bookshelf_id=shelf.id FROM (SELECT * FROM bookshelves) AS shelf WHERE books.bookshelf = shelf.name;

1590347891855 : ALTER TABLE books DROP COLUMN bookshelf;

1590347970418 : ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id)

