SELECT name
FROM   subjects s, books_subjects bs
WHERE  s.id=bs.subject AND bs.book=(SELECT id FROM books WHERE books.title='Atomic Habits');
