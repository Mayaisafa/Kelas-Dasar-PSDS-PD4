
CREATE Table Db_Mahasiswa (
NIM VARCHAR (10),
Nama VARCHAR (30)
)

INSERT INTO Db_Mahasiswa
VALUES ("210015049","Wisnu Catur R"),
("210015041", "Sindy Mei Marantika"),
("2200015035","Hasan Darmawan"),
("2100015051","Saiful Andika")

insert into Db_Mahasiswa (NIM)
values ("1800015053"),
("2100015037")

SELECT * FROM Db_Mahasiswa


CREATE Table Db_Asal (
NIM VARCHAR (10),
Asal VARCHAR (10)
)

INSERT INTO Db_Asal 
values ("210015049","Pasuruan"),
("210015041","Oku Timur"),
("1800015053","Ciamis"),
("2100015037","Bandung"),
("2100015030","Kudus"),
("2100015002","Bogor")

INSERT INTO Db_Asal (NIM)
values ("220015023"),
("2200015012")

SELECT * FROM Db_Asal

--Inner Join
SELECT dm.NIM, dm.Nama, da.Asal  
from Db_Mahasiswa dm 
inner join Db_Asal da
on Dm.NIM = Da.NIM

-- Left join
SELECT dm.NIM, dm.Nama, da.Asal
FROM Db_Mahasiswa dm
LEFT JOIN Db_Asal da 
ON dm.NIM = da.NIM

--Right join
SELECT da.NIM, dm.Nama, da.Asal
FROM Db_Mahasiswa dm
RIGHT JOIN Db_Asal da 
ON dm.NIM = da.NIM


--Inner join WITH ORDER
SELECT dm.NIM, dm.Nama , da.Asal 
FROM Db_Mahasiswa dm 
INNER JOIN Db_Asal da 
ON dm.NIM = da.NIM 
ORDER BY da.Asal DESC