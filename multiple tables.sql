--=melakukan penggabungan tabel orders dengan tabel subscriptions dengan menyatukan nilai pada kolom subscriptions_id pada masing masing tabel
--untuk default join atau inner join, nilai pada kolom yang akan disatukan hanya untuk nilai yang sama apabila nilai pada kolom yang ingin disatukan berbeda di masing-masing tabel maka nilai tersebut tidak akan masuk kedalam tabel baru setelah dilakukan join

select *
from orders
join subscriptions
on orders.subscription_id
=subscriptions.subscription_id
where subscriptions.description 
= 'Fashion Magazine';

--melakukan penggabungan tabel menggunakan left join, yang berarti melakukan penggabungan 2 tabel dengan mengacu kepada nilai pada kolom tabel pertama (newspaper)
--melakukan penggabungan tabel antara tabel newspaper dengan tabel online dan melakukan select data untuk id pelanggan yang tidak melakukan subscribe terhadap online edition

select *
from newspaper
left join online
  on newspaper.id = online.id
  where online.id is null;

--melakukan penggabungan tabel classes dengan students pada kolom primary key classes.id dengan foreign key students.class_id

select *
from classes
join students
on classes.id=students.class_id;

--cross join akan menggabungkan semua nilai yang ada 
--contoh apabila terdapat 3 warna baju dan 2 warna celana maka hasil dari cross join akan menghasilkan 3x2=6 kombinasi

select shirts.shirt_color, pants.pants_color
from shirts
cross join pants;

--melakukan union atau melakukan stack tabel 1 di atas tabel 2
--dengan syarat memiliki jumlah kolom yang sama dan tipe data pada kolom yang sama

select *
from newspaper
union
select * 
from online

--menggunakan with agar dapat melakukan kombinasi dua tabel dimana salah satu tabel merupakan hasil dari kalkulasi
--query pada parentheses, akan menghitung banyaknya jumlah magazines yang disubscribed oleh setiap customer
--lalu akan dilakukan operator join untuk menggabungkan tabel 'jumlah_subscribe_tiap_customer' dengan tabel customers, untuk menambahkan informasi terkait dari nama customer

with jumlah_subscribe_tiap_customer as (
   select customer_id,
      count(subscription_id) as 'subscriptions'
   from orders
   group by customer_id
)
select customers.customer_name, 
   previous_query.subscriptions
from previous_query
join customers
  on previous_query.customer_id = customers.customer_id;

