SELECT name
FROM   subjects s, books_subjects bs
WHERE  s.id=bs.subject AND bs.book=6;
