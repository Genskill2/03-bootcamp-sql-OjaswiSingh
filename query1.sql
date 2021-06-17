SELECT books.title
FROM   books, publisher
WHERE  books.publisher=publisher.id AND publisher.name='PHI';
