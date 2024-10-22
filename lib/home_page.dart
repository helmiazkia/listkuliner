import 'package:flutter/material.dart';
import 'package:listkuliner/List_item.dart';
import 'package:listkuliner/styles.dart';
import 'makanan.dart'; // Import model makanan

class HomePage extends StatelessWidget {
  final List<Makanan> listMakanan; // Definisikan variabel listMakanan

  // Konstruktor untuk menerima listMakanan
  const HomePage({super.key, required this.listMakanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Kuliner', style: textHeader1),
        centerTitle: true,
      ),
      body: ListView.builder(
        // Mengatur panjang / jumlah item dalam list
        itemCount: listMakanan.length, // Jumlah item sesuai panjang listMakanan
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          // Membangun item list menggunakan ListItem
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Image.asset(
                  listMakanan[index].gambar, // Menampilkan gambar makanan
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  listMakanan[index].nama,
                  style: textHeader2,
                ), // Nama makanan
                subtitle: Text(listMakanan[index].deskripsi), // Deskripsi makanan
                onTap: () {
                  // Aksi saat item ditekan, misal pindah ke halaman detail
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ListItem(makanan: listMakanan[index]),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
