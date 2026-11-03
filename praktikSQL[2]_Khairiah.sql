create database universitas;

create table universitas.dosen (
	idDosen varchar(16),
    namaDosen varchar(50),
    programStudi varchar(50),
    primary key (idDosen)
);

create table universitas.dosen (
	idDosen varchar(16) primary key,
    namaDosen varchar(50),
    programStudi varchar(50)
);

drop table universitas.dosen;

create table universitas.mahasiswa (
	idMhs varchar(16),
    namaMhs varchar(50),
    programStudi varchar(50),
    idDosenWali varchar(50),
    foreign key (idDosenWali) references universitas.dosen(idDosen)
);

describe universitas.mahasiswa;

insert into universitas.dosen (idDosen, namaDosen, programStudi)
values
	("A1001", "Dr. Attaya, M.T.", "Teknik Industri"),
    ("A1002", "Prof. Dr. Thalia, M.Mat.", "Matematika"),
    ("A1003", "Prof. Dr. Alif, M.Sc.", "Biologi"),
    ("A1004", "Ivana, Ph.D.", "Teknik Informatika"),
    ("A1005", "Dr. Alna, M.Si.", "Kimia");
    
select * from universitas.dosen;

-- ALTER TABLE
-- 1. Menambahkan kolom
alter table universitas.dosen add golDarah varchar(3);

-- 2. Menghapus kolom pada tabel
alter table universitas.dosen drop column golDarah; 

-- 3. Mengubah nama kolom pada tabel
alter table universitas.dosen change column namaDosen nama_dosen varchar(30);

-- 4. Mengubah tipe data kolom pada tabel
describe universitas.dosen;

alter table universitas.dosen modify column idDosen varchar(20);
