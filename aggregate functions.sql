
--melakukan perhitungan banyaknya jumlah apps pada tabel fake_apps yang memiliki nilai price 0

select count(*)
from fake_apps
where price =0;

--melakukan perhitungan total jumlah downloads apps 

select sum(downloads)
from fake_apps;

--melakukan pemilihan apps dengan harga termahal

select max(price)
from fake_apps;

--melakukan perhitungan rata-rata harga apps

select avg(price)
from fake_apps;

--melakukan perhitungan rata rata harga apps dan membulatkan nilainya dengan pembulatan 2 angka dibelakang koma

select round (avg (price),2)
from fake_apps;

--melakukan perhitungan total jumlah downloads terhadap setiap category apps

select category, sum(downloads)
from fake_apps
group by category;

--melakukan perhitungan rata-rata downloads terhadap setiap category apps dan terhadap harga yang ada pada setiap category apps

select category, 
   price,
   avg(downloads)
from fake_apps
group by 1,2;

--melakukan select data terhadap price, rata-rata downloads dengan pembulatan, dan banyaknya jumlah apps pada setiap price yang ada dengan ketentuan banyaknya jumlah apps harus > 10

select price,
round(avg(downloads)), count(*)
from fake_apps
group by price
having count(*) > 10;
