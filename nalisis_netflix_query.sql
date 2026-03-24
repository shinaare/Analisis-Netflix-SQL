--Menghitung Kelompok (Movie vs TV Show)
--Tujuannya: Mengetahui perbandingan jumlah antara Film dan Series.
SELECT type, COUNT (*) AS total_konten
FROM netflix_titles 
group by type;
--Mencari Top 5 Negara (Filter & Urutan)
--Tujuannya: Mengetahui negara mana yang paling produktif.
SELECT country,count(*) as jumlah
FROM netflix_titles 
WHERE country IS NOT NULL
group by country 
order by jumlah DESC 
LIMIT 6;
--Mencari Tahun dengan Konten Terbanyak
--Tujuannya: Melihat kapan Netflix paling "gila-gilaan" menambah konten.
SELECT release_year, COUNT(*) as tahun_terbanyak
FROM  netflix_titles 
group by release_year 
ORDER by tahun_terbanyak  desc
LIMIT 5;
--Apa sih 10 film (Movie) dengan durasi paling lama di Netflix?
-- Tujuan, Misi Terakhir: Mencari Film Terlama
SELECT title, duration, release_year
FROM netflix_titles
WHERE type = 'Movie' 
  AND duration IS NOT NULL
ORDER BY CAST(REPLACE(duration, ' min', '') AS INTEGER) DESC
LIMIT 10;