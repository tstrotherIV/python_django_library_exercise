INSERT INTO libraryapp_library
  (title, address)
VALUES
  ('Bellview Library', '500 Main Street');

INSERT INTO libraryapp_book
  (title, isbn, year_published, location_id, author, librarian_id)
VALUES
  ('Lambs', '59359409490', 2004, 1, 'Christopher Moore', 1);

UPDATE libraryapp_book
SET location_id = 1
WHERE title = "Lambs";

INSERT INTO libraryapp_book
  (title, isbn, year_published, location_id, author, librarian_id)
VALUES
  ('Taiko', '04275747474873', 2001, 1, 'Eiji Yoshikawa', 1);

INSERT INTO libraryapp_book
  (title, isbn, year_published, location_id, author, librarian_id)
VALUES
  ('The Golem and the Jinni', '8592475822', 2013, 1, 'Helene Wecker', 2);


SELECT
  li.id,
  li.title,
  li.address,
  b.id book_id,
  b.title book_title,
  b.author,
  b.year_published,
  b.isbn, 
FROM libraryapp_library li
  JOIN libraryapp_book b ON li.id = b.location_id

