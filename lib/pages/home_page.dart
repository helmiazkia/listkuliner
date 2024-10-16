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
          title: Text("Kuliner Nusantara", style: textHeader1),
          centerTitle: true,
        ),
        body: ListView(padding: EdgeInsets.all(10), children: [
          Text(
            "List Kuliner",
            style: textHeader2,
          ),
          SizedBox(height: 20),
          Container(
            height: 100,
            decoration: BoxDecoration(color: Colors.white),
          )
        ]),
      ),
    );
  }
}
