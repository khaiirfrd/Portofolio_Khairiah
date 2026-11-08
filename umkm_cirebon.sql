create database umkm_cirebon;

-- 1. Check table UMKM Kabupaten Cirebon
select * from umkm_kab_cirebon;

-- 2. Tunjukkan data umkm dengan jenis usaha makanan
select * from umkm_kab_cirebon where jenis_usaha = "MAKANAN";

-- 3. Tunjukkan data umkm dari tahun 2022 dengan jenis usaha batik
select * from umkm_kab_cirebon where tahun >= 2022 and jenis_usaha = "batik";

-- 4. Tunjukkan tiga data umkm dari tahun 2022 dengan jenis usaha batik
select * from umkm_kab_cirebon where tahun >= 2022 and jenis_usaha = "batik" limit 3;

-- 5. Jenis usaha apa saja yang tersedia di dalam database
select distinct jenis_usaha from umkm_kab_cirebon;

-- 6. Tunjukkan seluruh data dengan jenis usaha pertanian dan perikanan
-- Cara 1
select * from umkm_kab_cirebon where jenis_usaha in ("PERTANIAN", "PERIKANAN");

-- Cara 2
select * from umkm_kab_cirebon where jenis_usaha = "PERTANIAN" or jenis_usaha = "PERIKANAN";

-- 7. Tunjukkan seluruh data dengan jenis usaha gerabah dari tahun 2021 hingga 2025
select * from umkm_kab_cirebon where jenis_usaha = "GERABAH" and tahun >= 2021;

-- 8. Tunjukkan seluruh data dengan jumlahnya lebih dari 500 dan urutkan dari yang terbanyak;
select * from umkm_kab_cirebon where jumlah_umkm > 500 order by jumlah_umkm desc;
