insert into publisher(name, country) values 
        ('PHI', 'India'),
        ('Harper', 'USA'),
        ('GCP', 'USA'),
        ('Avery', 'USA'),
        ('Del Rey', 'UK'),
        ('Vintage', 'UK');

insert into subjects(name) values 
       ('C'),
       ('UNIX'),
       ('Technology'),
       ('Go'),
       ('Science Fiction'),
       ('Productivity'),
       ('Psychology'),
       ('Politics'),
       ('History');

insert into books(title, publisher) values
       ('The C Programming Language', (SELECT id FROM publisher WHERE name='PHI')),
       ('The Go Programming Language', (SELECT id FROM publisher WHERE name='PHI')),
       ('The UNIX Programming Environment', (SELECT id FROM publisher WHERE name='PHI')),
       ('Cryptonomicon', (SELECT id FROM publisher WHERE name='Harper')),
       ('Deep Work', (SELECT id FROM publisher WHERE name='GCP')),
       ('Atomic Habits', (SELECT id FROM publisher WHERE name='Avery')),
       ('The City and The City', (SELECT id FROM publisher WHERE name='Del Rey')),
       ('The Great War for Civilisation', (SELECT id FROM publisher WHERE name='Vintage'));

--mapping

insert into books_subjects (book, subject) values
    ((SELECT id FROM books WHERE title='The C Programming Language'), (SELECT id FROM subjects WHERE name='C')),
    ((SELECT id FROM books WHERE title='The C Programming Language'), (SELECT id FROM subjects WHERE name='UNIX')),
    ((SELECT id FROM books WHERE title='The C Programming Language'), (SELECT id FROM subjects WHERE name='Technology')),
    ((SELECT id FROM books WHERE title='The Go Programming Language'), (SELECT id FROM subjects WHERE name='Go')),
    ((SELECT id FROM books WHERE title='The Go Programming Language'), (SELECT id FROM subjects WHERE name='Technology')),
    ((SELECT id FROM books WHERE title='The UNIX Programming Environment'), (SELECT id FROM subjects WHERE name='UNIX')),
    ((SELECT id FROM books WHERE title='The UNIX Programming Environment'), (SELECT id FROM subjects WHERE name='Technology')),
    ((SELECT id FROM books WHERE title='Cryptonomicon'), (SELECT id FROM subjects WHERE name='Technology')),
    ((SELECT id FROM books WHERE title='Cryptonomicon'), (SELECT id FROM subjects WHERE name='Science Fiction')),
    ((SELECT id FROM books WHERE title='Deep Work'), (SELECT id FROM subjects WHERE name='Technology')),
    ((SELECT id FROM books WHERE title='Deep Work'), (SELECT id FROM subjects WHERE name='Productivity')),
    ((SELECT id FROM books WHERE title='Atomic Habits'), (SELECT id FROM subjects WHERE name='Productivity')),
    ((SELECT id FROM books WHERE title='Atomic Habits'), (SELECT id FROM subjects WHERE name='Psychology')),
    ((SELECT id FROM books WHERE title='The City and The City'), (SELECT id FROM subjects WHERE name='Science Fiction')),
    ((SELECT id FROM books WHERE title='The City and The City'), (SELECT id FROM subjects WHERE name='Politics')),
    ((SELECT id FROM books WHERE title='The Great War for Civilisation'), (SELECT id FROM subjects WHERE name='Politics')),
    ((SELECT id FROM books WHERE title='The Great War for Civilisation'), (SELECT id FROM subjects WHERE name='History'));
