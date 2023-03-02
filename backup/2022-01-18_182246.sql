DROP TABLE tbl_disposisi;

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO tbl_disposisi VALUES("2","Camat ","Lorem Ipsum is simply dummy text of the printing and typesetting industry.","Penting","2022-01-04","Segera","2","1");
INSERT INTO tbl_disposisi VALUES("4","Lurah","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras est magna, tempor et felis ut, finibus aliquam quam. Phasellus ullamcorper non tortor sed placerat. Nullam mollis accumsan felis, non tempor diam tempor in. Maecenas cursus convallis lorem tristique fermentum. Nam iaculis vitae lacus vel molestie. Praesent tristique tempus tristique. Morbi tempor ligula ac diam dapibus sagittis. Donec tempor metus ipsum, eu ornare est porta vitae. Nullam aliquet in lacus a semper. In purus leo, mattis at nisl et, blandit tincidunt purus. Nullam viverra nibh sit amet justo egestas, sit amet posuere orci auctor. Nullam molestie lorem vel scelerisque scelerisque.","Penting","2022-01-07","Segera","3","1");



DROP TABLE tbl_instansi;

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_instansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_instansi VALUES("1","Kementerian Sosial Republik Indonesia","Kelurahan Desa Banjarejo","Terverivikasi","Banjarejo,Batanghari,Lampung Timur","Sutopo Giri Puspito","-","https://Arsipbanjarrejo","Banjarejo@Gmail.com","logo.gif","1");



DROP TABLE tbl_klasifikasi;

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tbl_klasifikasi VALUES("2","234","Dinas Pendidikan Lampung","Lorem Ipsum is simply dummy text of the printing and typesetting industry","1");



DROP TABLE tbl_sett;

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sett`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_sett VALUES("1","10","10","10","1");



DROP TABLE tbl_surat_keluar;

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_keluar VALUES("1","1","kelurahan","12481","
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras est magna, tempor et felis ut, finibus aliquam quam. Phasellus ullamcorper non tortor sed placerat. Nullam mollis accumsan felis, non tempor diam tempor in. Maecenas cursus convallis lorem tristique fermentum. Nam iaculis vitae lacus vel molestie. Praesent tristique tempus tristique. Morbi tempor ligula ac diam dapibus sagittis. Donec tempor metus ipsum, eu ornare est porta vitae. Nullam aliquet in lacus a semper. In purus leo, mattis at nisl et, blandit tincidunt purus. Nullam viverra nibh sit amet justo egestas, sit amet posuere orci auctor. Nullam molestie lorem vel scelerisque scelerisque.","234","2022-01-28","2022-01-18","7795-download.jpg","ktp","1");



DROP TABLE tbl_surat_masuk;

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_masuk VALUES("2","150","12351","batanghari ","Lorem Ipsum is simply dummy text of the prp publishing software like Aldus PageMaker including versions of Lorem Ipsum.","234","gia","2022-01-01","2022-01-18","9675-download (1).png","SKCK ","1");
INSERT INTO tbl_surat_masuk VALUES("3","151","123213","Lampung ","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras est magna, tempor et felis ut, finibus aliquam quam. Phasellus ullamcorper non tortor sed placerat. Nullam mollis accumsan felis, non tempor diam tempor in. Maecenas cursus convallis lorem tristique fermentum. Nam iaculis vitae lacus vel molestie. Praesent tristique tempus tristique. Morbi tempor ligula ac diam dapibus sagittis. Donec tempor metus ipsum, eu ornare est porta vitae. Nullam aliquet in lacus a semper. In purus leo, mattis at nisl et, blandit tincidunt purus. Nullam viverra nibh sit amet justo egestas, sit amet posuere orci auctor. Nullam molestie lorem vel scelerisque scelerisque.","234","KTM","2022-01-19","2022-01-18","8410-download.jpg","KTM","1");



DROP TABLE tbl_user;

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO tbl_user VALUES("1","Kelurahan_banjarejo","25d55ad283aa400af464c76d713c07ad","Sutopo Giri Puspito","-","1");
INSERT INTO tbl_user VALUES("2","1203007","25d55ad283aa400af464c76d713c07ad","jaka","-","3");
INSERT INTO tbl_user VALUES("3","gilang","25d55ad283aa400af464c76d713c07ad","rqqq","-","2");



