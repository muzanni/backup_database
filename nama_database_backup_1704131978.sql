

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_nama` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO admin VALUES("1","admin","admin","21232f297a57a5a743894a0e4a801fc3");



CREATE TABLE `dokter` (
  `dokter_id` int(11) NOT NULL AUTO_INCREMENT,
  `dokter_nama` varchar(50) NOT NULL,
  `dokter_jenis_kelamin` varchar(20) NOT NULL,
  `dokter_kontak` varchar(20) NOT NULL,
  `dokter_alamat` varchar(50) NOT NULL,
  `dokter_spesialis` varchar(50) NOT NULL,
  PRIMARY KEY (`dokter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

INSERT INTO dokter VALUES("1","dr. Hamdani Hasballah","Laki-Laki","82272242022","Cunda barat","Spesialis Dalam");
INSERT INTO dokter VALUES("2","drg. Hazizatul Ula","Laki-Laki","88712871271","Bukit Bersatu","Dokter Gigi");
INSERT INTO dokter VALUES("3","dr. Azizah Zahara","Perempuan","8227671276","Bukit Bersatu","Dokter Umum");
INSERT INTO dokter VALUES("4","dr. DONNY MULIZAR,M.K.M","Laki-Laki","88728172162","Langsa Barat","Dokter Umum");
INSERT INTO dokter VALUES("5","dr. LAILA AMALIA, Sp.Rad","Perempuan","8897162716","Langsa Barat","Spesialis Radiologi");
INSERT INTO dokter VALUES("6","dr. FURQAN, Sp.B","Laki-Laki","85321872817","Langsa Timur","Spesialis Bedah");
INSERT INTO dokter VALUES("7","dr. GUNARDI, Sp.PD","Laki-Laki","8534615621","Langsa Timur","Spesialis Dalam");

