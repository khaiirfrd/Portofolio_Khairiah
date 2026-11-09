create database proyeksi_umkm_jabar;

select * from proyeksi_umkm_jabar.umkm_jabar;

-- 1. Berapa banyak baris dari tabel umkm_jabar?
select count(*) from proyeksi_umkm_jabar.umkm_jabar;

select count(*) as banyak_baris from proyeksi_umkm_jabar.umkm_jabar;

-- 2. Berapa banyak umkm di Kabupaten Bogor pada tahun 2020?
select sum(proyeksi_jumlah_umkm) as banyak_umkm_KabBogor_2020 from proyeksi_umkm_jabar.umkm_jabar 
where nama_kabupaten_kota =  "KABUPATEN BOGOR" and tahun = 2020;

-- 3. Bagaimana tren banyaknya umkm di Kabupaten Tasikmalaya dari tahun 2020 s.d. 2022?
select tahun, sum(proyeksi_jumlah_umkm) as banyak_umkm_KabTasikmalaya from proyeksi_umkm_jabar.umkm_jabar
where nama_kabupaten_kota = "KABUPATEN TASIKMALAYA" and tahun between 2020 and 2022 group by tahun;

-- 4. Berapa rata-rata banyaknya umkm setiap kategori usaha di setiap kabupaten/kota di Jawa Barat 
-- dari tahun ke tahun?
select tahun, nama_kabupaten_kota, kategori_usaha, avg(proyeksi_jumlah_umkm) as rerata_banyak_umkm 
from proyeksi_umkm_jabar.umkm_jabar group by tahun, nama_kabupaten_kota, kategori_usaha;

-- 5. Kategori usaha dengan banyak unit paling banyak dan paling sedikit di Kabupaten Pangandaran
-- pada tahun 2022
select kategori_usaha, proyeksi_jumlah_umkm from proyeksi_umkm_jabar.umkm_jabar
where tahun = 2022 
  and nama_kabupaten_kota = 'KABUPATEN PANGANDARAN'
  and (
      proyeksi_jumlah_umkm = (
          select min(proyeksi_jumlah_umkm) 
          from proyeksi_umkm_jabar.umkm_jabar 
          where tahun = 2022 and nama_kabupaten_kota = 'KABUPATEN PANGANDARAN'
      )
      or 
      proyeksi_jumlah_umkm = (
          select MAX(proyeksi_jumlah_umkm) 
          from proyeksi_umkm_jabar.umkm_jabar 
          where tahun = 2022 and nama_kabupaten_kota = 'KABUPATEN PANGANDARAN'
      )
  );

-- 6. Kabupaten/kota apa yang memiliki banyak umkm yang kurang dari 100.000 pada tahun 2022?
select nama_kabupaten_kota, sum(proyeksi_jumlah_umkm) as banyak_umkm from proyeksi_umkm_jabar.umkm_jabar
where tahun = 2022 group by nama_kabupaten_kota having banyak_umkm < 100000;