--Cara menampilakan data 
select * from Isafa

-- Cara lain menampilkan data dengan prefiks
--prefiks jelas 
select * from Isafa AS I
--prefiks samar
select * from Isafa I

--cara mengambil variabel nama 
--Menggunakan prefiks
select I.NIM from Isafa I
--tanpa prefiks 
select NIM from Isafa

--cara mengambil variabel NamaDepan dan NamaBelakang
select NamaDepan, NamaBelakang from Isafa

-- cara mengambil variabel NamaDepan dan NamaBelakang
select I.NamaDepan ,NamaBelakang from Isafa I

-- contoh lain
select o.NamaDepan , o.NIM from Isafa o

--mengganti urutan variabel nomorHP, NB, ND, NIM
select I.NomerHP,I.NamaDepan ,I.NamaBelakang ,I.NIM from Isafa I

