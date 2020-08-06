INSERT INTO libraryapp_library
  (title, address)
VALUES
  ('Bellview Library', '500 Main Street');

INSERT INTO libraryapp_book
  (title, isbn, year_published, location_id, author, librarian_id)
VALUES
  ('Lamb', '59359409490', 2004, 1, 'Christopher Moore', 1);

INSERT INTO libraryapp_book
  (title, isbn, year_published, location_id, author, librarian_id)
VALUES
  ('Taiko', '04275747474873', 2001, 1, 'Eiji Yoshikawa', 1);

INSERT INTO libraryapp_book
  (title, isbn, year_published, location_id, author, librarian_id)
VALUES
  ('The Golem and the Jinni', '8592475822', 2013, 1, 'Helene Wecker', 2);


select
  l.id,
  l.location_id,
  l.user_id,
  u.first_name,
  u.last_name,
  u.email,
  libr.title
from libraryapp_librarian l
  join auth_user u on l.user_id = u.id
  JOIN libraryapp_library libr on l.location_id = libr.id