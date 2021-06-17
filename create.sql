create table publisher (
    id serial primary key,
    name text,
    country text
    );

create table subjects (
    id serial primary key,
    name text
    );    

create table books (
    id serial primary key,
    title text,
    publisher serial references publisher(id)
    );
    
create table books_subjects (
    book serial references books(id),
    subject serial references subjects(id)
    );
