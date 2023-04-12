create database praktikum2;

USE praktikum2;

CREATE TABLE Mahasiswa (
   NIM VARCHAR(10) NOT NULL PRIMARY KEY,
   nama VARCHAR(50) NOT NULL,
   jenis_kelamin VARCHAR(20) NOT NULL,
   tgl_lahir DATE NOT NULL,
   jalan VARCHAR(100) NOT NULL,
   kota VARCHAR(50) NOT NULL,
   kode_pos VARCHAR(10) NOT NULL,
   no_hp VARCHAR(20) NOT NULL,
   kode_dosen VARCHAR(10) NOT NULL
);

CREATE TABLE Dosen (
   kode_dosen VARCHAR(10) NOT NULL PRIMARY KEY,
   nama VARCHAR(50) NOT NULL
);

CREATE TABLE Matakuliah (
   kode_matakuliah VARCHAR(10) NOT NULL PRIMARY KEY,
   nama VARCHAR(50) NOT NULL,
   SKS INT NOT NULL
);

CREATE TABLE jadwal_mengajar (
   kode_dosen VARCHAR(10) NOT NULL,
   kode_matakuliah VARCHAR(10) NOT NULL,
   hari ENUM('Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu') NOT NULL,
   jam TIME NOT NULL,
   ruang VARCHAR(20) NOT NULL,
   PRIMARY KEY (kode_dosen, kode_matakuliah, hari, jam)
);

CREATE TABLE KRSMahasiswa (
   NIM VARCHAR(10) NOT NULL,
   kode_matakuliah VARCHAR(10) NOT NULL,
   kode_dosen VARCHAR(10) NOT NULL,
   semester VARCHAR(10) NOT NULL,
   nilai INT NOT NULL,
   PRIMARY KEY (NIM, kode_matakuliah, kode_dosen)
);

INSERT INTO `praktikum2`.`mahasiswa` (`NIM`, `nama`, `jenis_kelamin`, `tgl_lahir`, `jalan`, `kota`, `kode_pos`, `no_hp`, `kode_dosen`) VALUES ('11223344', 'Ari Santoso', 'Laki-laki', '1998-10-12', 'Jl. Cempaka', 'Bekasi', '17121', '089911122331', '554321');
INSERT INTO `praktikum2`.`mahasiswa` (`NIM`, `nama`, `jenis_kelamin`, `tgl_lahir`, `jalan`, `kota`, `kode_pos`, `no_hp`, `kode_dosen`) VALUES ('11223345', 'Ario Talib', 'Laki-laki', '1999-11-16', 'Jl. Lemah abang', 'Cikarang', '17534', '089911122332', '554321');
INSERT INTO `praktikum2`.`mahasiswa` (`NIM`, `nama`, `jenis_kelamin`, `tgl_lahir`, `jalan`, `kota`, `kode_pos`, `no_hp`, `kode_dosen`) VALUES ('11223346', 'Dina Marlina', 'Perempuan', '1997-12-01', 'Jl. Juanda', 'Karawang', '41311', '089911122333', '554321');
INSERT INTO `praktikum2`.`mahasiswa` (`NIM`, `nama`, `jenis_kelamin`, `tgl_lahir`, `jalan`, `kota`, `kode_pos`, `no_hp`, `kode_dosen`) VALUES ('11223347', 'Lisa Ayu', 'Perempuan', '1996-01-02', 'Jl. Achmad Yani', 'Bekasi', '17124', '089911122334', '554321');
INSERT INTO `praktikum2`.`mahasiswa` (`NIM`, `nama`, `jenis_kelamin`, `tgl_lahir`, `jalan`, `kota`, `kode_pos`, `no_hp`, `kode_dosen`) VALUES ('11223348', 'Tiara Wahidah', 'Perempuan', '1980-02-05', 'Jl. Raya Ciselang', 'Bekasi', '17142', '089911122335', '554321');
INSERT INTO `praktikum2`.`mahasiswa` (`NIM`, `nama`, `jenis_kelamin`, `tgl_lahir`, `jalan`, `kota`, `kode_pos`, `no_hp`, `kode_dosen`) VALUES ('11223349', 'Anton Sinaga', 'Laki-laki', '1988-03-10', 'Jl. Ki Balok', 'Cikarang', '17530', '089911122336', '554321');

UPDATE `praktikum2`.`mahasiswa` SET `tgl_lahir` = '1979-08-31' WHERE (`NIM` = '11223344');

SELECT * FROM mahasiswa WHERE nama = 'Ari Santoso';

DELETE FROM Mahasiswa WHERE NIM = '11223346';

SELECT * FROM Mahasiswa WHERE tgl_lahir >= '1996-01-02';

SELECT * FROM Mahasiswa WHERE jenis_kelamin = 'Perempuan' AND kota = 'Bekasi';

SELECT * FROM Mahasiswa 
WHERE (jenis_kelamin = 'Laki-laki' AND kota = 'Bekasi') 
OR (jenis_kelamin = 'Perempuan' AND tgl_lahir <= DATE_SUB(CURDATE(), INTERVAL 22 YEAR));

SELECT nama, jalan, kota 
FROM Mahasiswa ;

SELECT * FROM Mahasiswa ORDER BY nama ASC;






