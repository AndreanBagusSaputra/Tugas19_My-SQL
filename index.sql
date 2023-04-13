-- Soal 2.1
-- Tampilkan data kode, nama, tmp_lahir, tgl_lahir dari table pelanggan
select kode, nama_pelanggan, tmp_lahir, tgl_lahir from pelanggan;

-- Tampilkan kode,nama,stok dari table produk yang stok-nya hanya 4
select * from produk where stok = 4;

-- Tampilkan seluruh data pelanggan yang tempat lahirnya Jakarta
select * from pelanggan where tmp_lahir='jakarta';

-- Tampilkan kode, nama, tmp_lahir, tgl_lahir dari pelanggan diurutkan dari yang paling muda usianya
select kode,nama_pelanggan,tmp_lahir,tgl_lahir from pelanggan order by tgl_lahir desc;

-- Soal 2.2
-- Tampilkan data produk yang stoknya 3 dan 10
select * from produk where stok=3 or stok=10;

-- Tampilkan data produk yang harga jualnya kurang dari 5 juta tetapi lebih dari 500 ribu
select * from produk where harga_jual < 5000000 and harga_jual > 500000;

-- Tampilkan data produk yang harus segera ditambah stoknya
SELECT * FROM produk WHERE min_stok > stok;

-- Tampilkan data pelanggan mulai dari yang paling muda
SELECT * FROM pelanggan ORDER BY tgl_lahir DESC;

-- Tampilkan data pelanggan yang lahirnya di Jakarta dan gendernya perempuan
SELECT * FROM pelanggan WHERE tmp_lahir='jakarta' AND jk='P';

-- Tampilkan data pelanggan yang ID nya 2, 4 dan 6
SELECT * from pelanggan WHERE id IN (2,4,6);

--Tampilkan data produk yang harganya antara 500 ribu sampai 6 juta
SELECT * FROM produk WHERE harga_jual >= 500000 AND harga_jual<= 6000000;

-- Soal 2.3
-- Tampilkan produk yang kode awalnya huruf K dan huruf M
select * from produk where kode like 'K%' or kode like 'M%';

-- Tampilkan produk yang kode awalnya bukan huruf M
SELECT * FROM produk WHERE LEFT(kode,1) <> 'm';

-- Tampilkan produk-produk televisi
SELECT * FROM produk WHERE nama = 'tv';

-- Tampilkan pelanggan mengandung huruf 'SA'
select * from pelanggan where nama_pelanggan like '%sa%';

-- Tampilkan pelanggan yang lahirnya bukan di Jakarta dan mengandung huruf ‘yo‘
SELECT * FROM pelanggan
    -> WHERE tgl_lahir NOT IN
    -> (SELECT tgl_lahir FROM pelanggan WHERE tmp_lahir = 'Jakarta')
    -> AND nama_pelanggan LIKE '%yo%';

-- Tampilkan pelanggan yang karakter huruf ke – 2 nya adalah A
SELECT * FROM pelanggan WHERE SUBSTRING(nama_pelanggan, 2, 1) = 'A';
 
-- Soal 2.4
-- Tampilkan 2 data produk termahal
SELECT * FROM produk ORDER BY harga_beli DESC LIMIT 2;

-- Tampilkan produk yang paling murah
select * from produk order by harga_beli asc;

-- Tampilkan produk yang stoknya paling banyak
SELECT * FROM produk WHERE stok = (SELECT MAX(stok) FROM produk);

-- Tampilkan dua produk yang stoknya paling sedikit
SELECT * FROM produk WHERE stok = (SELECT MIN(stok) FROM produk);

-- Tampilkan pelanggan yang paling muda
SELECT * FROM pelanggan WHERE tgl_lahir = (SELECT MAX(tgl_lahir) FROM pelanggan);

-- Tampilkan pelanggan yang paling tua
SELECT * FROM pelanggan WHERE tgl_lahir = (SELECT MIN(tgl_lahir) FROM pelanggan);
