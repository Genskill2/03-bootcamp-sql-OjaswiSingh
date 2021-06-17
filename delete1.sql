DELETE FROM books_subjects WHERE books_subjects.subject=(SELECT id FROM subjects WHERE subjects.name='History') ;
DELETE FROM subjects WHERE subjects.id=(SELECT id FROM subjects WHERE subjects.name='History');
