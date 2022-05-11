
--membuat tabel celebs

create table celebs (
   id integer,
   name text,
   age integer
 );

 --melakukan insert data

 insert into celebs (id,name,age)
 values(1,'justin bieber', 22);
 insert into celebs (id,name,age)
 values(2,'beyonce knowles ',26);
 INSERT INTO celebs (id,name,age)
 values(3,'jeremy lin',26);
 insert into celebs (id,name,age)
 values(4,'taylor swift',26);

 --menambahkan kolom twitter

 alter table celebs
 add column twitter_handle text;
 select * from celebs;

 --melakukan update data pada kolom twitter untuk id celeb = 4
 update celebs
 set twitter_handle ='@taylorswift13'
 where id=4;
 select * from celebs;

 --menghapus data yang memiliki nilai null pada kolom twitter

 delete from celebs
 where twitter_handle is null;
 select * from celebs;
