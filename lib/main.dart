import 'package:flutter/material.dart';

void main() => runApp(HakMuslim());

class HakMuslim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hak Muslim Kepada Muslim Lainnya"),
          centerTitle: true,
        ),
        body: FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> textindo = [
    "Mengucapkan Salam",
    "Memenuhi Undangan",
    "Memberi Nasehat",
    "Menjawab Yarhamukallah saat yang bersin mengucapkan Hamdalah",
    "Membesuknya saat sakit",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: textindo.length,
        itemBuilder: (BuildContext context, int posisi) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(posisi.toString()),
                    Text(textindo[posisi])
                  ],
                ),
              ),
            ),
          );
        });
  }
}
