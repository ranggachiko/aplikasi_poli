import 'package:flutter/material.dart';

class PegawaiForm extends StatefulWidget{
  const PegawaiForm({Key? key}) :super(key: key);
  _PegawaiFormState createState()=> _PegawaiFormState();

}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPegawai(),
              SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),  
    );  
  }

  _fieldNamaPegawai(){
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
    );
  }

  _tombolSimpan(){
    return ElevatedButton(onPressed: () {}, child: const Text("Simpan"));
  }
}  