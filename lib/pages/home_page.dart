import 'package:flutter/material.dart';
import 'package:listkuliner/components/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: pageBgColor,
        appBar: AppBar(
          backgroundColor: headerBackColor,
          title: const Text("Kuliner Nusantara", style: textHeader1),
          centerTitle: true,
        ),
        body: ListView(padding: EdgeInsets.all(10), children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.list_alt_sharp, size: 20),
              SizedBox(width: 10),
              Text(
                "List KULINER",
                style: textHeader2,
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            height: 100,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 100,
                  decoration: BoxDecoration(color: Colors.black54),
                ),
                Expanded(
                  child: Text(
                    "Nama Menu Kuliner",
                    style: textHeader2,
                  ),
                ),
                Icon(
                  Icons.house_rounded,
                  size: 40,
                  color: iconColor,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
