-- Membuat Tabel Nilai MK_Kalkulus
CREATE TABLE MK_Kalkulus(
	NIM VARCHAR (10),
	Nama VARCHAR (30),
	UTS INTEGER,
	UAS INTEGER
)

-- Input Data
INSERT INTO MK_Kalkulus (NIM,Nama,UTS,UAS)
VALUES	("2100015049","Wisnu Catur R",70,90),
		("2100015041","Sindy Mei Marantika",70,70),
		("2100015006","Januar Nur Rasyid",60,70),
		("2100015037","Lisa Nessa Safitri",80,80)
		
-- Melihat Tabel
SELECT * FROM MK_Kalkulus 

-- Melihat Rata-rata Setiap Anak
SELECT *,((UTS+UAS)/2) AS Nilai_Akhir FROM MK_Kalkulus

-- Melihat Rata-rata Nilai Akhir
SELECT *,AVG((UTS+UAS)/2) AS Nilai_Akhir FROM MK_Kalkulus 

-- Melihat NIlai yang Diatas Rata-rata
SELECT *,((UTS+UAS)/2) AS Nilai_Akhir FROM MK_Kalkulus
WHERE Nilai_Akhir>73.75

--Input Data
INSERT INTO MK_Kalkulus (NIM,Nama,UTS,UAS)
VALUES	("2215015035","Hasan Darmawan",40,40)

-- Melihat Rata-rata Setiap Anak
SELECT *,((UTS+UAS)/2) AS Nilai_Akhir FROM MK_Kalkulus 

-- Melihat Rata-rata Nilai Akhir
SELECT *,AVG((UTS+UAS)/2) AS Nilai_Akhir FROM MK_Kalkulus 	

-- Melihat NIlai yang Diatas Rata-rata (Sub Query  menampilkan data lebih dari rata-rata)
SELECT *,((UTS+UAS)/2) AS Nilai_Akhir FROM MK_Kalkulus
WHERE Nilai_Akhir > (SELECT AVG((UTS+UAS)/2) AS Nilai_Akhir FROM MK_Kalkulus)

--Input Data
INSERT INTO MK_Kalkulus (NIM,Nama,UTS,UAS)
VALUES	("2100015035","Saiful Andika",100,50)

-- Melihat Rata-rata Setiap Anak
SELECT *,((UTS+UAS)/2) AS Nilai_Akhir FROM MK_Kalkulus 
