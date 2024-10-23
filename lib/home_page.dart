import 'package:flutter/material.dart';
import 'package:listkuliner/list_item.dart';
import 'package:listkuliner/makanan.dart'; // Import Makanan class

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Access the static list from Makanan class
      itemCount: Makanan.listMakanan.length,
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return ListItem(makanan: Makanan.listMakanan[index]);
      },
    );
  }
}
