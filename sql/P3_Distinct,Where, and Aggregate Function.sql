--mengakses tabel customer
select * from Customer c 

--menampilkan tabel customer 
select c.country from customer c

--menampilkan country di tabel costumer dengan fungsi distinc
select distinct (c.country) from customer c

--menampilkan semua data dari negara brazil
select * from customer c
where c.country = "Brazil" and c.city = "São Paulo"

--menampilkan semua data dari negara brazil dan germany
select * from customer c
where c.country = "Brazil" or c.country = "Germany"

-- menampilkan semua data dari negara brazil dan germany
select * from customer c
where c.country in ("Brazil","Germany")

--menghitung jumlah total.
select sum(i.Total) from Invoice i 

--menghitung jumlah avarage 
select avg(i.Total) from Invoice i 

--menghitung nilai minimum
select MIN(i.Total) from Invoice i  
select MIN(i.Total) as NilaiMinimum from Invoice i

--nilai maksimum data 
select MAX(i.Total) from Invoice i  

