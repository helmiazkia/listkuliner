class Makanan {
  final String nama;
  final String deskripsi;
  final String gambar;
  final String detail;
  final String waktubuka;
  final String harga;
  final String kalori;
  final List<String> gambarlain;
  final List<Map<String, String>> bahan;

  Makanan({
    required this.nama,
    required this.harga,
    required this.gambarlain,
    required this.waktubuka,
    required this.detail,
    required this.kalori,
    required this.bahan,
    required this.deskripsi,
    required this.gambar,
  });

  // Make the list static so it can be accessed globally
  static List<Makanan> listMakanan = [
    Makanan(
      nama: 'Bubur',
      deskripsi: 'Nasi Lembek',
      gambar: 'assets/bubur.jpg',
      detail: 'Bubur merupakan istilah umum...',
      waktubuka: '07.00-10.00',
      harga: 'Rp 10.000',
      kalori: '372 kkal',
      gambarlain: [
        'assets/bubur1.jpg',
        'assets/bubur2.jpg',
        'assets/bubur3.jpg'
      ],
      bahan: [
        {'Daging': 'assets/bahan/daging.png'},
        {'Cabai': 'assets/bahan/cabai.png'},
        {'Bawang': 'assets/bahan/bawang.png'},
        {'Jahe': 'assets/bahan/jahe.png'},
        {'Santan': 'assets/bahan/santan.png'},
      ],
    ),
    // Add more Makanan objects here...
  ];
}
