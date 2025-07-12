#=========== PEMBUATAN DATABASE QOTS =========#
SHOW DATABASES;
CREATE DATABASE QOTS;
use QOTS;
SHOW TABLES;


#=========== BUAT TABLE PROMO =========#
-- Membuat tabel Promo untuk menyimpan informasi promo yang tersedia
CREATE TABLE Promo (
    -- ID_Promo adalah Primary Key dari tabel, unik untuk setiap promo
    ID_Promo VARCHAR(50) PRIMARY KEY,

    -- Nama_Promo menyimpan nama dari promo (misalnya "Diskon Akhir Tahun")
    Nama_Promo VARCHAR(100),

    -- Diskon menyimpan besar diskon dalam bentuk persentase (misalnya 25.5 artinya 25.5%)
    -- Rentang nilai biasanya antara 0.00 sampai 100.00
    Diskon DECIMAL(5,2),

    -- Masa_Berlaku menunjukkan kapan promo ini berakhir
    -- Format tanggal: YYYY-MM-DD
    Masa_Berlaku DATE
);


#=========== BUAT TABLE TRANSAKSI =========#
CREATE TABLE Transaksi (
    -- ID_Transaksi adalah Primary Key unik untuk setiap transaksi
    ID_Transaksi VARCHAR(50) PRIMARY KEY,

    -- ID_Promo adalah Foreign Key yang merujuk ke tabel Promo
    -- Digunakan untuk mengetahui promo apa yang digunakan dalam transaksi ini
    ID_Promo VARCHAR(50),

    -- Tanggal transaksi dilakukan
    Tanggal_Transaksi DATE,

    -- Biaya pengiriman dalam satuan harga (misalnya: 25000.00)
    Biaya_Pengiriman DECIMAL(10,2),

    -- Total biaya akhir setelah diskon promo
    Total_Biaya DECIMAL(10,2),

    -- Definisi foreign key
    FOREIGN KEY (ID_Promo) REFERENCES Promo(ID_Promo)
);


#=========== BUAT TABLE FAKTUR =========#
-- Membuat tabel Faktur untuk menyimpan informasi faktur/invoice dari setiap transaksi pengiriman
CREATE TABLE Faktur (
    -- ID_Faktur adalah Primary Key unik untuk setiap faktur
    ID_Faktur VARCHAR(50) PRIMARY KEY,

    -- ID_Transaksi adalah Foreign Key yang merujuk ke tabel Transaksi
    -- Digunakan untuk menghubungkan faktur ini dengan transaksi tertentu
    ID_Transaksi VARCHAR(50),

    -- Tanggal_Transaksi menunjukkan kapan transaksi (dan faktur) dibuat
    Tanggal_Transaksi DATE,

    -- Total_Biaya adalah jumlah total biaya yang harus dibayarkan dalam transaksi ini
    -- Format DECIMAL(10,2) digunakan untuk presisi harga uang
    Total_Biaya DECIMAL(10,2),

    -- Nama_Penerima adalah nama orang atau pihak yang menerima paket
    Nama_Penerima VARCHAR(100),

    -- Nama_Pengirim adalah nama orang atau pihak yang mengirimkan paket
    Nama_Pengirim VARCHAR(100),

    -- Alamat adalah lokasi tujuan pengiriman paket
    Alamat TEXT,

    -- Definisi foreign key:
    -- ID_Transaksi pada tabel Faktur harus sesuai dengan ID_Transaksi yang ada di tabel Transaksi
    FOREIGN KEY (ID_Transaksi) REFERENCES Transaksi(ID_Transaksi)
);


#=========== BUAT TABLE PELANGGAN =========#
CREATE TABLE Pelanggan (
    ID_Pelanggan VARCHAR(50) PRIMARY KEY,
    Nama_Pelanggan VARCHAR(100),
    No_Tlp VARCHAR(20),
    Alamat TEXT
);


#=========== BUAT TABLE STATUS PELANGGAN =========#
CREATE TABLE Status_Pelanggan (
    ID_Pelanggan VARCHAR(50),
    ID_Status VARCHAR(50),
    Terdaftar BOOLEAN,
    Tidak_Terdaftar BOOLEAN,
    PRIMARY KEY (ID_Pelanggan, ID_Status),
    FOREIGN KEY (ID_Pelanggan) REFERENCES Pelanggan(ID_Pelanggan)
);


#=========== BUAT TABLE STATUS METODE PEMBAYARAN =========#
CREATE TABLE Metode_Pembayaran (
    ID_Metode_Pembayaran VARCHAR(50) PRIMARY KEY,
    ID_Transaksi VARCHAR(50),
    Kartu_Kredit BOOLEAN,
    Transfer_Bank BOOLEAN,
    Cash BOOLEAN,
    FOREIGN KEY (ID_Transaksi) REFERENCES Transaksi(ID_Transaksi)
);


#=========== BUAT TABLE STATUS LAYANAN PENGIRIMAN =========#
CREATE TABLE Layanan_Pengiriman (
    ID_Layanan_Pengiriman VARCHAR(50) PRIMARY KEY,
    Tanggal_Transaksi DATE,
    Estimasi_Waktu INT, -- dalam hari
    Biaya DECIMAL(10,2)
);


#=========== BUAT TABLE JENIS LAYANAN PENGIRIMAN =========#
CREATE TABLE Jenis_Layanan_Pengiriman (
    ID_Jenis_Layanan VARCHAR(50) PRIMARY KEY,
    ID_Layanan_Pengiriman VARCHAR(50),
    Regular BOOLEAN,
    Express BOOLEAN,
    Cargo BOOLEAN,
    FOREIGN KEY (ID_Layanan_Pengiriman) REFERENCES Layanan_Pengiriman(ID_Layanan_Pengiriman)
);


#=========== BUAT TABLE STATUS PENGIRIMAN =========#
CREATE TABLE Status_Pengiriman (
    ID_Status_Pengiriman VARCHAR(50) PRIMARY KEY,
    Timestamps DATETIME,
    Lokasi VARCHAR(255)
);


#=========== BUAT TABLE JENIS STATUS PENGIRIMAN =========#
CREATE TABLE Jenis_Status_Pengiriman (
    ID_Jenis_Status_Pengiriman VARCHAR(50) PRIMARY KEY,
    ID_Status_Pengiriman VARCHAR(50),
    Dikirim BOOLEAN,
    Menunggu_Konfirmasi BOOLEAN,
    Tertunda BOOLEAN,
    FOREIGN KEY (ID_Status_Pengiriman) REFERENCES Status_Pengiriman(ID_Status_Pengiriman)
);


#=========== BUAT TABLE GUDANG =========#
CREATE TABLE Gudang (
    ID_Gudang VARCHAR(50) PRIMARY KEY,
    Nama_Gudang VARCHAR(100),
    Alamat TEXT,
    Kota VARCHAR(100),
    Kode_Pos VARCHAR(10)
);


#=========== BUAT TABLE ULASAN PAKET =========#
CREATE TABLE Ulasan_Paket (
    ID_Ulasan VARCHAR(50) PRIMARY KEY,
    RatingReview INT CHECK (RatingReview BETWEEN 1 AND 5),
    Tanggal_Ulasan DATE
);


#=========== BUAT TABLE PENERIMA =========#
CREATE TABLE Penerima (
    No_Tlp_Penerima VARCHAR(20) PRIMARY KEY,
    Nama_Penerima VARCHAR(100),
    Alamat TEXT,
    ID_Ulasan VARCHAR(50),
    FOREIGN KEY (ID_Ulasan) REFERENCES Ulasan_Paket(ID_Ulasan)
);


#=========== BUAT TABLE PAKET =========#
CREATE TABLE Paket (
    No_Resi VARCHAR(50) PRIMARY KEY,
    ID_Transaksi VARCHAR(50),
    ID_Pelanggan VARCHAR(50),
    ID_Layanan_Pengiriman VARCHAR(50),
    ID_Status_Pengiriman VARCHAR(50),
    No_Tlp_Penerima VARCHAR(20),
    Berat DECIMAL(10,2),
    Dimensi DECIMAL(10,2),
    Jenis_Barang VARCHAR(100),
    Nilai_Deklarasi DECIMAL(10,2),
    FOREIGN KEY (ID_Transaksi) REFERENCES Transaksi(ID_Transaksi),
    FOREIGN KEY (ID_Pelanggan) REFERENCES Pelanggan(ID_Pelanggan),
    FOREIGN KEY (ID_Layanan_Pengiriman) REFERENCES Layanan_Pengiriman(ID_Layanan_Pengiriman),
    FOREIGN KEY (ID_Status_Pengiriman) REFERENCES Status_Pengiriman(ID_Status_Pengiriman),
    FOREIGN KEY (No_Tlp_Penerima) REFERENCES Penerima(No_Tlp_Penerima)
);


#=========== BUAT TABLE RUTE PENGIRIMAN =========#
-- Membuat tabel Rute_Pengiriman untuk menyimpan informasi jalur pengiriman paket melalui gudang-gudang
CREATE TABLE Rute_Pengiriman (
    -- ID_Rute adalah Primary Key unik untuk setiap rute pengiriman
    ID_Rute VARCHAR(50) PRIMARY KEY,

    -- No_Resi adalah Foreign Key yang merujuk ke tabel Paket
    -- Digunakan untuk mengetahui paket mana yang melewati rute ini
    No_Resi VARCHAR(50),

    -- ID_Gudang adalah Foreign Key yang merujuk ke tabel Gudang
    -- Menunjukkan gudang mana yang dilewati oleh paket
    ID_Gudang VARCHAR(50),

    -- Urutan_Transit menunjukkan urutan gudang dalam proses pengiriman
    -- Misalnya: 1 = gudang pertama, 2 = gudang kedua, dst.
    Urutan_Transit INT,

    -- Asal_Pengirim adalah lokasi awal pengiriman paket
    Asal_Pengirim VARCHAR(255),

    -- Tujuan_Pengirim adalah lokasi akhir tujuan paket
    Tujuan_Pengirim VARCHAR(255),

    -- Definisi foreign key ke tabel Paket
    FOREIGN KEY (No_Resi) REFERENCES Paket(No_Resi),

    -- Definisi foreign key ke tabel Gudang
    FOREIGN KEY (ID_Gudang) REFERENCES Gudang(ID_Gudang)
);


#=========== BUAT TABLE STATUS TRANSIT GUDANG =========#
CREATE TABLE Status_Transit_Gudang (
    ID_Status_Transit_Gudang VARCHAR(50) PRIMARY KEY,
    ID_Status_Pengiriman VARCHAR(50),
    ID_Gudang VARCHAR(50),
    Lokasi_Terkini VARCHAR(255),
    Catatan_Transit TEXT,
    Timestamps DATETIME,
    FOREIGN KEY (ID_Status_Pengiriman) REFERENCES Status_Pengiriman(ID_Status_Pengiriman),
    FOREIGN KEY (ID_Gudang) REFERENCES Gudang(ID_Gudang)
);




