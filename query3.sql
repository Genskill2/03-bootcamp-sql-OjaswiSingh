SELECT title
FROM   books b, books_subjects bs
WHERE  b.id=bs.book AND (bs.subject IN ((SELECT id FROM subjects WHERE name='Technology'),(SELECT id FROM subjects WHERE name='Politics'))) ;
