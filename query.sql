--melakukan select data secara keseluruhan dari tabel movies

select * from movies;

--melakukan select data pada kolom name, genre, dan year pada tabel movies

select name, genre, year
from movies;

--melakukan select data pada kolom imdb_rating dan mengganti nama kolom menjadi 'imdb'

select imdb_rating as 'imdb'
from movies;

--melakukan select data yang bersifat unique pada kolom year

select distinct year from movies;

--melakukan select data dengan kentuan movies yang mempunyai nilai pada kolom year > 2014

select *
from movies
where year > 2014;

--melakukan select data dengan ketentuan nama movies yang terdiri dari huruf depan 'Se' dan huruf belakang 'en'

select *
from movies
where name like 'Se_en';

--melakukan select data dengan ketentuan nama movies yang diawali dengan kata 'The'

select *
from movies
where name like 'The %'

--melakukan select data dengan ketentuan nilai imdb_rating null

select name
from movies
where imdb_rating is null;

--melakukan select data movies dengan ketentuan year berada di antara 1970 dan 1979

select *
from movies
where year between 1970 and 1979;

--melakukan select data dengan dua ketentuan yang pertama year < 1985 dan yang kedua genre horror

select * 
from movies
where year <1985
and genre ='horror';

--melakukan select data dengan ketentuan genre romance atau genre comedy

select *
from movies
where genre='romance'
or genre='comedy';

--melakukan select data name, year, dan imdb_rating dengan melakukan sort terhadap kolom imdb_rating dari nilai yang tertinggi

select name, year, imdb_rating from movies
order by imdb_rating desc;

--melakukan select data dengan memberikan batasan hanya 3 movies yang memiliki nilai imdb_rating tertinggi

select *
from movies
order by imdb_rating desc
limit 3;

--menerapkan if-then logic dengan membuat kolom 'Mood' dengan ketentuan movies dengan genre romance atau comedy akan diberikan label chill selain dari genre itu diberikan label intense

SELECT name,
 CASE
  WHEN genre = 'romance' THEN 'Chill'
  WHEN genre = 'comedy'  THEN 'Chill'
  ELSE 'Intense'
 END AS 'Mood'
FROM movies;
