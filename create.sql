create table publisher (
    id integer primary key AUTOINCREMENT NOT NULL,
    name text,
    country text
    );

create table subjects (
    id integer primary key AUTOINCREMENT NOT NULL,
    name text
    );    

create table books (
    id integer primary key AUTOINCREMENT NOT NULL,
    title text,
    publisher serial references publisher(id)
    );
    
create table books_subjects (
    book serial references books(id),
    subject serial references subjects(id)
    );
