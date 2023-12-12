import 'package:flutter/material.dart';
import '../widget/sidebar.dart';
import '../model/poli.dart';
import 'poli_form.dart';
import 'poli_detail.dart';

class Polipage extends StatefulWidget {
  @override
  _PoliPageState createState() => _PoliPageState();
}

class _PoliPageState extends State<Polipage> {
  final List<Poli> poliList = [
    Poli(namaPoli: "Poli Anak"),
    Poli(namaPoli: "Poli Kandungan"),
    Poli(namaPoli: "Poli Gigi"),
    Poli(namaPoli: "Poli THT"),
    Poli(namaPoli: "Poli Mata"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliForm()),
              );
              if (result != null) {
                // Tambahkan data baru ke daftar poliList
                setState(() {
                  poliList.add(result);
                });
              }
            },
          ),
        ],
      ),
      body: ListView(
        children: poliList.map((poli) {
          return GestureDetector(
            child: Card(
              child: ListTile(
                title: Text(poli.namaPoli),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PoliDetail(poli: poli),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
