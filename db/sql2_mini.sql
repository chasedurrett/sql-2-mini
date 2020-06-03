--PART 1

create table movie
(
    movie_id serial primary key,
    title text,
    media_type_id int references media_type(media_type_id)
)


insert into movie
    (title, media_type_id)
values
    ('epic movie', 3),
    ('harry potter', 3);

--PART 2
alter table movie 
add column genre_id int references genre
(genre_id)

UPDATE 
movie 
SET 
genre_id = 20 
WHERE 
movie_id = 1;

UPDATE 
movie 
SET 
genre_id = 22 
WHERE 
movie_id = 2;

-- PART 3
select title, name
from movie
    join genre on movie.genre_id = genre.genre_id

select a.name, al.title
from
    album al
    join artist a on al.artist_id = a.artist_id

select * from track
where genre_id in 
(select genre_id
from genre 
where name = 'jazz' or name = 'blues')


update employee set 
phone = null 
where employee_id = 1

select * from employee 
where employee_id = 1

select * from customer where company is null 
select distinct country from customer


select * from customer where fax is null

delete from customer where fax is null