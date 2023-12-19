import 'package:flutter/material.dart';
import 'pegawai_detail.dart';
import 'pasien_detail.dart';
import '../model/pegawai.dart';
import '../model/pasien.dart';
import 'pegawai_item.dart';
import 'pasien_item.dart';
import 'pegawai_form.dart';

class PegawaiPage extends StatefulWidget{
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();

}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data RS"),
        actions: [
        GestureDetector(
          child: const Icon(Icons.add),
          onTap : () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => PegawaiForm()));
          },
        )
      ],
      ), 
    
      body: ListView(
        children: [
          PegawaiItem(pegawai: Pegawai(namaPegawai: "Pegawai")),
          PasienItem(pasien: Pasien(namaPasien: "Pasien")),

        ],
      ),
    );   
  }
}
            