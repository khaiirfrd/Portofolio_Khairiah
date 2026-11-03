CREATE DATABASE sdm;

CREATE TABLE sdm.karyawan (
	nik VARCHAR(16),
    nama_karyawan VARCHAR(30),
    level_jabatan INTEGER,
    tanggal_lahir DATE
);

INSERT INTO sdm.karyawan VALUES (
	"A01",
    "Andi",
    1,
    "1997-09-08"
);

SELECT * FROM sdm.karyawan;

INSERT INTO sdm.karyawan (nik, nama_karyawan, level_jabatan, tanggal_lahir)
VALUES (
	"A02",
    "Selly",
    5,
    "1999-01-01"
);

INSERT INTO karyawan (nik, nama_karyawan, level_jabatan, tanggal_lahir)
VALUES (
	"A03",
    "Nina",
    10,
    "1995-05-10"
);







