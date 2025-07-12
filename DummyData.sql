#=========== PENGECEKAN DATABASE QOTS =========#
SHOW DATABASES;
USE QOTS;
SHOW TABLES;

#=========== INSERT DATA KE TABLE YANG ADA DI DATABASE QOTS =========#
-- NOTE : INSERT HARUS DARI ATAS KE BAWAH YA GUYS!!


INSERT INTO Promo (ID_Promo, Nama_Promo, Diskon, Masa_Berlaku) VALUES
('PROMO001', 'Diskon Akhir Tahun', 25.00, '2025-12-31'),
('PROMO002', 'Promo Lebaran', 15.50, '2025-06-30'),
('PROMO003', 'Promo Back to School', 10.00, '2025-07-31'),
('PROMO004', 'Diskon Black Friday', 35.00, '2025-11-30'),
('PROMO005', 'Promo Ulang Tahun QOTS', 20.00, '2025-08-17'),
('PROMO006', 'Promo Valentine', 12.50, '2026-02-14'),
('PROMO007', 'Promo Spesial Pelanggan', 30.00, '2025-10-31'),
('PROMO008', 'Flash Sale Weekend', 17.50, '2025-05-31'),
('PROMO009', 'Diskon Pelanggan Baru', 5.00, '2025-12-31'),
('PROMO010', 'Promo Referral', 10.00, '2025-09-30');
SELECT * FROM Promo; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO PELANGGAN TABLE ===================
INSERT INTO Pelanggan (ID_Pelanggan, Nama_Pelanggan, No_Tlp, Alamat) VALUES
('CUST001', 'Budi Santoso', '081234567890', 'Jl. Merdeka No. 123, Jakarta Selatan'),
('CUST002', 'Siti Rahayu', '082345678901', 'Jl. Kenanga No. 45, Bandung'),
('CUST003', 'Ahmad Wijaya', '083456789012', 'Jl. Sudirman No. 78, Surabaya'),
('CUST004', 'Linda Kusuma', '084567890123', 'Jl. Diponegoro No. 56, Yogyakarta'),
('CUST005', 'Rudi Hartono', '085678901234', 'Jl. Gatot Subroto No. 12, Medan'),
('CUST006', 'Dewi Sulistiani', '086789012345', 'Jl. Pahlawan No. 34, Semarang'),
('CUST007', 'Agus Purnomo', '087890123456', 'Jl. Ahmad Yani No. 67, Makassar'),
('CUST008', 'Nina Wati', '088901234567', 'Jl. Pemuda No. 89, Palembang'),
('CUST009', 'Hendro Wibowo', '089012345678', 'Jl. Asia Afrika No. 23, Bandung'),
('CUST010', 'Maya Sari', '089123456789', 'Jl. Imam Bonjol No. 45, Jakarta Pusat');
SELECT * FROM Pelanggan; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO STATUS_PELANGGAN TABLE ===================
INSERT INTO Status_Pelanggan (ID_Pelanggan, ID_Status, Terdaftar, Tidak_Terdaftar) VALUES
('CUST001', 'STATUS001', TRUE, FALSE),
('CUST002', 'STATUS002', TRUE, FALSE),
('CUST003', 'STATUS003', TRUE, FALSE),
('CUST004', 'STATUS004', TRUE, FALSE),
('CUST005', 'STATUS005', TRUE, FALSE),
('CUST006', 'STATUS006', TRUE, FALSE),
('CUST007', 'STATUS007', FALSE, TRUE),
('CUST008', 'STATUS008', TRUE, FALSE),
('CUST009', 'STATUS009', TRUE, FALSE),
('CUST010', 'STATUS010', FALSE, TRUE);
SELECT * FROM Status_Pelanggan; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO LAYANAN_PENGIRIMAN TABLE ===================
INSERT INTO Layanan_Pengiriman (ID_Layanan_Pengiriman, Tanggal_Transaksi, Estimasi_Waktu, Biaya) VALUES
('LAYANAN001', '2025-01-15', 2, 25000.00),
('LAYANAN002', '2025-01-18', 1, 50000.00),
('LAYANAN003', '2025-01-20', 5, 15000.00),
('LAYANAN004', '2025-01-22', 3, 20000.00),
('LAYANAN005', '2025-01-25', 1, 45000.00),
('LAYANAN006', '2025-01-28', 4, 18000.00),
('LAYANAN007', '2025-02-01', 2, 30000.00),
('LAYANAN008', '2025-02-03', 1, 55000.00),
('LAYANAN009', '2025-02-05', 6, 12000.00),
('LAYANAN010', '2025-02-08', 3, 22000.00);
SELECT * FROM Layanan_Pengiriman; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO JENIS_LAYANAN_PENGIRIMAN TABLE ===================
INSERT INTO Jenis_Layanan_Pengiriman (ID_Jenis_Layanan, ID_Layanan_Pengiriman, Regular, Express, Cargo) VALUES
('JENIS001', 'LAYANAN001', TRUE, FALSE, FALSE),
('JENIS002', 'LAYANAN002', FALSE, TRUE, FALSE),
('JENIS003', 'LAYANAN003', TRUE, FALSE, FALSE),
('JENIS004', 'LAYANAN004', TRUE, FALSE, FALSE),
('JENIS005', 'LAYANAN005', FALSE, TRUE, FALSE),
('JENIS006', 'LAYANAN006', TRUE, FALSE, FALSE),
('JENIS007', 'LAYANAN007', TRUE, FALSE, FALSE),
('JENIS008', 'LAYANAN008', FALSE, TRUE, FALSE),
('JENIS009', 'LAYANAN009', TRUE, FALSE, FALSE),
('JENIS010', 'LAYANAN010', FALSE, FALSE, TRUE);
SELECT * FROM Jenis_Layanan_Pengiriman; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO TRANSAKSI TABLE ===================
INSERT INTO Transaksi (ID_Transaksi, ID_Promo, Tanggal_Transaksi, Biaya_Pengiriman, Total_Biaya) VALUES
('TRX001', 'PROMO001', '2025-01-15', 25000.00, 18750.00),
('TRX002', 'PROMO002', '2025-01-18', 50000.00, 42250.00),
('TRX003', 'PROMO003', '2025-01-20', 15000.00, 13500.00),
('TRX004', 'PROMO001', '2025-01-22', 20000.00, 15000.00),
('TRX005', 'PROMO005', '2025-01-25', 45000.00, 36000.00),
('TRX006', 'PROMO006', '2025-01-28', 18000.00, 15750.00),
('TRX007', 'PROMO002', '2025-02-01', 30000.00, 25350.00),
('TRX008', 'PROMO004', '2025-02-03', 55000.00, 35750.00),
('TRX009', NULL, '2025-02-05', 12000.00, 12000.00),
('TRX010', 'PROMO009', '2025-02-08', 22000.00, 20900.00);
SELECT * FROM Transaksi; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO METODE_PEMBAYARAN TABLE ===================
INSERT INTO Metode_Pembayaran (ID_Metode_Pembayaran, ID_Transaksi, Kartu_Kredit, Transfer_Bank, Cash) VALUES
('PAYMENT001', 'TRX001', TRUE, FALSE, FALSE),
('PAYMENT002', 'TRX002', FALSE, TRUE, FALSE),
('PAYMENT003', 'TRX003', FALSE, FALSE, TRUE),
('PAYMENT004', 'TRX004', TRUE, FALSE, FALSE),
('PAYMENT005', 'TRX005', FALSE, TRUE, FALSE),
('PAYMENT006', 'TRX006', FALSE, FALSE, TRUE),
('PAYMENT007', 'TRX007', TRUE, FALSE, FALSE),
('PAYMENT008', 'TRX008', FALSE, TRUE, FALSE),
('PAYMENT009', 'TRX009', FALSE, FALSE, TRUE),
('PAYMENT010', 'TRX010', TRUE, FALSE, FALSE);
SELECT * FROM Metode_Pembayaran; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO FAKTUR TABLE ===================
INSERT INTO Faktur (ID_Faktur, ID_Transaksi, Tanggal_Transaksi, Total_Biaya, Nama_Penerima, Nama_Pengirim, Alamat) VALUES
('FAKTUR001', 'TRX001', '2025-01-15', 18750.00, 'Rina Marlina', 'Budi Santoso', 'Jl. Pangeran Diponegoro No. 56, Jakarta Pusat'),
('FAKTUR002', 'TRX002', '2025-01-18', 42250.00, 'Joko Widodo', 'Siti Rahayu', 'Jl. Veteran No. 12, Surakarta'),
('FAKTUR003', 'TRX003', '2025-01-20', 13500.00, 'Diana Putri', 'Ahmad Wijaya', 'Jl. Thamrin No. 45, Jakarta Selatan'),
('FAKTUR004', 'TRX004', '2025-01-22', 15000.00, 'Eko Prasetyo', 'Linda Kusuma', 'Jl. Malioboro No. 78, Yogyakarta'),
('FAKTUR005', 'TRX005', '2025-01-25', 36000.00, 'Ratna Sari', 'Rudi Hartono', 'Jl. Ahmad Yani No. 23, Surabaya'),
('FAKTUR006', 'TRX006', '2025-01-28', 15750.00, 'Andi Wijaya', 'Dewi Sulistiani', 'Jl. Gajah Mada No. 90, Semarang'),
('FAKTUR007', 'TRX007', '2025-02-01', 25350.00, 'Putri Indah', 'Agus Purnomo', 'Jl. Perintis Kemerdekaan No. 112, Makassar'),
('FAKTUR008', 'TRX008', '2025-02-03', 35750.00, 'Bayu Pratama', 'Nina Wati', 'Jl. Jenderal Sudirman No. 67, Palembang'),
('FAKTUR009', 'TRX009', '2025-02-05', 12000.00, 'Lia Anggraini', 'Hendro Wibowo', 'Jl. Merdeka No. 34, Bandung'),
('FAKTUR010', 'TRX010', '2025-02-08', 20900.00, 'Reza Mahendra', 'Maya Sari', 'Jl. Hayam Wuruk No. 89, Jakarta Barat');
SELECT * FROM Faktur; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO STATUS_PENGIRIMAN TABLE ===================
INSERT INTO Status_Pengiriman (ID_Status_Pengiriman, Timestamps, Lokasi) VALUES
('STATUS001', '2025-01-15 08:30:00', 'Jakarta Selatan'),
('STATUS002', '2025-01-18 09:15:00', 'Bandung'),
('STATUS003', '2025-01-20 10:45:00', 'Surabaya'),
('STATUS004', '2025-01-22 11:20:00', 'Yogyakarta'),
('STATUS005', '2025-01-25 12:00:00', 'Medan'),
('STATUS006', '2025-01-28 13:30:00', 'Semarang'),
('STATUS007', '2025-02-01 14:45:00', 'Makassar'),
('STATUS008', '2025-02-03 15:15:00', 'Palembang'),
('STATUS009', '2025-02-05 16:30:00', 'Bandung'),
('STATUS010', '2025-02-08 17:00:00', 'Jakarta Pusat');
SELECT * FROM Status_Pengiriman; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO JENIS_STATUS_PENGIRIMAN TABLE ===================
INSERT INTO Jenis_Status_Pengiriman (ID_Jenis_Status_Pengiriman, ID_Status_Pengiriman, Dikirim, Menunggu_Konfirmasi, Tertunda) VALUES
('JENIS_STATUS001', 'STATUS001', TRUE, FALSE, FALSE),
('JENIS_STATUS002', 'STATUS002', TRUE, FALSE, FALSE),
('JENIS_STATUS003', 'STATUS003', FALSE, TRUE, FALSE),
('JENIS_STATUS004', 'STATUS004', TRUE, FALSE, FALSE),
('JENIS_STATUS005', 'STATUS005', TRUE, FALSE, FALSE),
('JENIS_STATUS006', 'STATUS006', FALSE, FALSE, TRUE),
('JENIS_STATUS007', 'STATUS007', TRUE, FALSE, FALSE),
('JENIS_STATUS008', 'STATUS008', FALSE, TRUE, FALSE),
('JENIS_STATUS009', 'STATUS009', TRUE, FALSE, FALSE),
('JENIS_STATUS010', 'STATUS010', FALSE, FALSE, TRUE);
SELECT * FROM Jenis_Status_Pengiriman; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO GUDANG TABLE ===================
INSERT INTO Gudang (ID_Gudang, Nama_Gudang, Alamat, Kota, Kode_Pos) VALUES
('GUDANG001', 'Gudang Pusat Jakarta', 'Jl. Industri Raya No. 50', 'Jakarta Utara', '14240'),
('GUDANG002', 'Gudang Regional Bandung', 'Jl. Soekarno Hatta No. 120', 'Bandung', '40123'),
('GUDANG003', 'Gudang Regional Surabaya', 'Jl. Rungkut Industri No. 75', 'Surabaya', '60293'),
('GUDANG004', 'Gudang Regional Yogyakarta', 'Jl. Ring Road Utara No. 88', 'Yogyakarta', '55281'),
('GUDANG005', 'Gudang Regional Medan', 'Jl. Sisingamangaraja No. 45', 'Medan', '20217'),
('GUDANG006', 'Gudang Regional Semarang', 'Jl. Majapahit No. 60', 'Semarang', '50192'),
('GUDANG007', 'Gudang Regional Makassar', 'Jl. Perintis Kemerdekaan Km. 15', 'Makassar', '90241'),
('GUDANG008', 'Gudang Regional Palembang', 'Jl. Kol. H. Burlian No. 78', 'Palembang', '30139'),
('GUDANG009', 'Gudang Cabang Denpasar', 'Jl. Sunset Road No. 100', 'Denpasar', '80361'),
('GUDANG010', 'Gudang Cabang Balikpapan', 'Jl. MT Haryono No. 55', 'Balikpapan', '76114');
SELECT * FROM Gudang; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO ULASAN_PAKET TABLE ===================
INSERT INTO Ulasan_Paket (ID_Ulasan, RatingReview, Tanggal_Ulasan) VALUES
('REVIEW001', 5, '2025-01-17'),
('REVIEW002', 4, '2025-01-20'),
('REVIEW003', 3, '2025-01-22'),
('REVIEW004', 5, '2025-01-24'),
('REVIEW005', 4, '2025-01-27'),
('REVIEW006', 2, '2025-01-30'),
('REVIEW007', 5, '2025-02-03'),
('REVIEW008', 4, '2025-02-05'),
('REVIEW009', 3, '2025-02-07'),
('REVIEW010', 5, '2025-02-10');
SELECT * FROM Ulasan_Paket; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO PENERIMA TABLE ===================
INSERT INTO Penerima (No_Tlp_Penerima, Nama_Penerima, Alamat, ID_Ulasan) VALUES
('081987654321', 'Rina Marlina', 'Jl. Pangeran Diponegoro No. 56, Jakarta Pusat', 'REVIEW001'),
('082876543210', 'Joko Widodo', 'Jl. Veteran No. 12, Surakarta', 'REVIEW002'),
('083765432109', 'Diana Putri', 'Jl. Thamrin No. 45, Jakarta Selatan', 'REVIEW003'),
('084654321098', 'Eko Prasetyo', 'Jl. Malioboro No. 78, Yogyakarta', 'REVIEW004'),
('085543210987', 'Ratna Sari', 'Jl. Ahmad Yani No. 23, Surabaya', 'REVIEW005'),
('086432109876', 'Andi Wijaya', 'Jl. Gajah Mada No. 90, Semarang', 'REVIEW006'),
('087321098765', 'Putri Indah', 'Jl. Perintis Kemerdekaan No. 112, Makassar', 'REVIEW007'),
('088210987654', 'Bayu Pratama', 'Jl. Jenderal Sudirman No. 67, Palembang', 'REVIEW008'),
('089109876543', 'Lia Anggraini', 'Jl. Merdeka No. 34, Bandung', 'REVIEW009'),
('089098765432', 'Reza Mahendra', 'Jl. Hayam Wuruk No. 89, Jakarta Barat', 'REVIEW010');
SELECT * FROM Penerima; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO PAKET TABLE ===================
INSERT INTO Paket (No_Resi, ID_Transaksi, ID_Pelanggan, ID_Layanan_Pengiriman, ID_Status_Pengiriman, No_Tlp_Penerima, Berat, Dimensi, Jenis_Barang, Nilai_Deklarasi) VALUES
('RESI001', 'TRX001', 'CUST001', 'LAYANAN001', 'STATUS001', '081987654321', 2.50, 30.00, 'Elektronik', 2000000.00),
('RESI002', 'TRX002', 'CUST002', 'LAYANAN002', 'STATUS002', '082876543210', 1.00, 20.00, 'Dokumen', 500000.00),
('RESI003', 'TRX003', 'CUST003', 'LAYANAN003', 'STATUS003', '083765432109', 5.00, 40.00, 'Perabotan', 1500000.00),
('RESI004', 'TRX004', 'CUST004', 'LAYANAN004', 'STATUS004', '084654321098', 3.00, 25.00, 'Pakaian', 800000.00),
('RESI005', 'TRX005', 'CUST005', 'LAYANAN005', 'STATUS005', '085543210987', 0.50, 15.00, 'Kosmetik', 1200000.00),
('RESI006', 'TRX006', 'CUST006', 'LAYANAN006', 'STATUS006', '086432109876', 4.00, 35.00, 'Buku', 300000.00),
('RESI007', 'TRX007', 'CUST007', 'LAYANAN007', 'STATUS007', '087321098765', 2.00, 22.00, 'Makanan', 250000.00),
('RESI008', 'TRX008', 'CUST008', 'LAYANAN008', 'STATUS008', '088210987654', 1.50, 18.00, 'Aksesoris', 750000.00),
('RESI009', 'TRX009', 'CUST009', 'LAYANAN009', 'STATUS009', '089109876543', 7.00, 50.00, 'Olahraga', 950000.00),
('RESI010', 'TRX010', 'CUST010', 'LAYANAN010', 'STATUS010', '089098765432', 3.50, 28.00, 'Mainan', 400000.00);
SELECT * FROM Paket; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO RUTE_PENGIRIMAN TABLE ===================
INSERT INTO Rute_Pengiriman (ID_Rute, No_Resi, ID_Gudang, Urutan_Transit, Asal_Pengirim, Tujuan_Pengirim) VALUES
('RUTE001', 'RESI001', 'GUDANG001', 1, 'Jakarta Selatan', 'Jakarta Pusat'),
('RUTE002', 'RESI002', 'GUDANG002', 1, 'Bandung', 'Surakarta'),
('RUTE003', 'RESI002', 'GUDANG006', 2, 'Bandung', 'Surakarta'),
('RUTE004', 'RESI003', 'GUDANG003', 1, 'Surabaya', 'Jakarta Selatan'),
('RUTE005', 'RESI003', 'GUDANG001', 2, 'Surabaya', 'Jakarta Selatan'),
('RUTE006', 'RESI004', 'GUDANG004', 1, 'Yogyakarta', 'Yogyakarta'),
('RUTE007', 'RESI005', 'GUDANG005', 1, 'Medan', 'Surabaya'),
('RUTE008', 'RESI005', 'GUDANG003', 2, 'Medan', 'Surabaya'),
('RUTE009', 'RESI006', 'GUDANG006', 1, 'Semarang', 'Semarang'),
('RUTE010', 'RESI007', 'GUDANG007', 1, 'Makassar', 'Makassar'),
('RUTE011', 'RESI008', 'GUDANG008', 1, 'Palembang', 'Palembang'),
('RUTE012', 'RESI009', 'GUDANG002', 1, 'Bandung', 'Bandung'),
('RUTE013', 'RESI010', 'GUDANG001', 1, 'Jakarta Pusat', 'Jakarta Barat');
SELECT * FROM Rute_Pengiriman; -- untuk ngecek udah masuk atau belum


-- =================== INSERTING DATA INTO STATUS_TRANSIT_GUDANG TABLE ===================
INSERT INTO Status_Transit_Gudang (ID_Status_Transit_Gudang, ID_Status_Pengiriman, ID_Gudang, Lokasi_Terkini, Catatan_Transit, Timestamps) VALUES
('TRANSIT001', 'STATUS001', 'GUDANG001', 'Jakarta Utara', 'Paket sudah diterima di gudang pusat', '2025-01-15 10:30:00'),
('TRANSIT002', 'STATUS002', 'GUDANG002', 'Bandung', 'Paket dalam proses penyortiran', '2025-01-18 11:15:00'),
('TRANSIT003', 'STATUS002', 'GUDANG006', 'Semarang', 'Paket dalam perjalanan menuju gudang tujuan', '2025-01-19 08:45:00'),
('TRANSIT004', 'STATUS003', 'GUDANG003', 'Surabaya', 'Paket sudah tiba di gudang regional', '2025-01-20 13:20:00'),
('TRANSIT005', 'STATUS003', 'GUDANG001', 'Jakarta Utara', 'Paket dalam perjalanan menuju alamat penerima', '2025-01-21 09:30:00'),
('TRANSIT006', 'STATUS004', 'GUDANG004', 'Yogyakarta', 'Paket sudah tiba di gudang tujuan', '2025-01-22 14:45:00'),
('TRANSIT007', 'STATUS005', 'GUDANG005', 'Medan', 'Paket dalam persiapan pengiriman', '2025-01-25 15:00:00'),
('TRANSIT008', 'STATUS005', 'GUDANG003', 'Surabaya', 'Paket tiba di gudang transit', '2025-01-26 10:20:00'),
('TRANSIT009', 'STATUS006', 'GUDANG006', 'Semarang', 'Paket tertunda karena cuaca buruk', '2025-01-28 16:30:00'),
('TRANSIT010', 'STATUS007', 'GUDANG007', 'Makassar', 'Paket siap untuk diantar ke alamat penerima', '2025-02-01 09:15:00'),
('TRANSIT011', 'STATUS008', 'GUDANG008', 'Palembang', 'Paket menunggu konfirmasi penerima', '2025-02-03 11:45:00'),
('TRANSIT012', 'STATUS009', 'GUDANG002', 'Bandung', 'Paket sudah diantarkan ke alamat tujuan', '2025-02-05 13:10:00'),
('TRANSIT013', 'STATUS010', 'GUDANG001', 'Jakarta Utara', 'Paket tertunda karena alamat tidak lengkap', '2025-02-08 14:30:00');
SELECT * FROM Status_Transit_Gudang; -- untuk ngecek udah masuk atau belum