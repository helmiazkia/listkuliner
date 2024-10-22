import 'package:flutter/material.dart';
import 'package:listkuliner/makanan.dart'; // Import model makanan

class DetailPage extends StatelessWidget {
  final Makanan makanan; // Menerima data makanan

  const DetailPage({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: <Widget>[
                Image.asset(
                  makanan.gambar, // Gambar dari objek makanan
                  width: double.infinity, // Lebar penuh layar
                  fit: BoxFit.cover, // Mengatur gambar agar sesuai dengan layar
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context); // Aksi kembali ke halaman sebelumnya
                            },
                          ),
                        ),
                        const FavouriteButton(), // Tombol favorit
                      ],
                    ),
                  ),
                ),
              ],
            ),
            
            // Penempatan Container untuk menampilkan nama makanan
            Container(
              margin: const EdgeInsets.only(top: 16.0), // Margin di atas
              child: Text(
                makanan.nama, // Nama makanan
                textAlign: TextAlign.center, // Teks ditengah
                style: const TextStyle(
                  fontSize: 24.0, // Ukuran teks
                  fontWeight: FontWeight.bold, // Teks tebal
                ),
              ),
            ),
            
            // Konten lain di bawah nama makanan seperti deskripsi, detail, dll
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                makanan.deskripsi, // Deskripsi makanan
                style: const TextStyle(fontSize: 16.0),
                textAlign: TextAlign.justify,
              ),
            ),
            // Tambahkan konten lain seperti informasi kalori, harga, dll.
          ],
        ),
      ),
    );
  }
}

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({super.key});

  @override
  _FavouriteButtonState createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavourite ? Icons.favorite : Icons.favorite_border,
        color: isFavourite ? Colors.red : Colors.white,
      ),
      onPressed: () {
        setState(() {
          isFavourite = !isFavourite;
        });
      },
    );
  }
}
