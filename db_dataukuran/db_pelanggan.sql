-- buat tabel dengan nama pelanggan yang dimana terdapat beberapa atribut id,nama,jenis kelamin,alamat dan ukuran baju
CREATE TABLE Pelanggan(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(45) NOT NULL,
    jenisKelaminDb CHAR(1) NOT NULL,
    alamatDb CHAR(3) NOT NULL,
    ukuranDb VARCHAR(5) NOT NULL
) Engine = InnoDB;

-- memasukkan value ke dalam tabel pelanggan
INSERT into pelanggan(nama,jenisKelaminDb,alamatDb,ukuranDb) VALUES
("Budi","L","KDR","XXL"),
("Ari","P","TLG","X"),
("Yudi","L","NGK","X"),
("Anis","P","KDR","L"),
("Agus","L","TLG","XL");

UPDATE pelanggan SET alamatDB = "NGK" WHERE id = 3;

-- menampilkan data tertentu dengan query case dan alias
SELECT nama,jeniskelaminDb,
CASE
    when jeniskelaminDb = "P" then "Perempuan"
    else "Laki-laki"
END as "Jenis_Kelamin_Update",alamatDb,
CASE
    when alamatDb = "KDR" then "Kediri"
    when alamatDb = "TLG" then "Tulungagung" 
    else "Nganjuk"
END as "alamat Update",ukuranDb,
CASE
    when ukuranDb = "L" then "Large"
    when ukuranDb = "XL" then "Extra Large"
    when ukuranDb = "XXL" then "Very Extra Large"
    else "medium"
end as "Ukuran Update"
FROM pelanggan;



SELECT * FROM pelanggan;
