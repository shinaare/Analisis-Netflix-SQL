--Mencari Kata di Tengah Kalimat (LIKE)
SELECT title, release_year, listed_in
FROM netflix_titles
WHERE title LIKE '%Love%'
LIMIT 10;

--Mencari di Antara Rentang Tahun (BETWEEN)
SELECT title, type, release_year
FROM netflix_titles
WHERE release_year BETWEEN  2019 AND 2021
ORDER BY release_year DESC;

--Memilih Beberapa Pilihan Sekaligus (IN)
SELECT title, country, release_year
FROM netflix_titles
WHERE country IN ('Indonesia', 'South Korea', 'Japan')
ORDER BY country;

SELECT 
    MAX(release_year) AS tahun_terbaru, 
    MIN(release_year) AS tahun_terlama 
FROM netflix_titles;

--Boss ingin tahu film apa saja yang punya unsur 'Horror' di kolom listed_in
SELECT title, release_year, listed_in
from netflix_titles 
where listed_in like '%horror%'
LIMIT 10;

--Tampilkan semua TV Show yang dirilis antara tahun 2017 sampai 2020. Urutkan dari yang paling baru ke yang paling lama.
SELECT title, type, release_year
FROM netflix_titles 
where type in ('TV Show') and release_year between 2017 and 2020
order by release_year; 

--Boss mau fokus ke tiga negara: 'Thailand', 'Vietnam', dan 'Philippines'. Tampilkan judul film dan negaranya, tapi HANYA untuk yang tipenya 'Movie'.
SELECT type, title, country
FROM netflix_titles nt 
where country  in ('Thailand', 'Vietnam', 'Philippines')and type = 'Movie';

--Cari film dari 'Indonesia' yang durasinya di atas 90 menit.
SELECT title, duration, country
FROM netflix_titles
WHERE country = 'Indonesia'
  AND type = 'Movie'
  AND CAST(REPLACE(duration, ' min', '') AS INT) > 90;