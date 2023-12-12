import 'package:flutter/material.dart';
import '../model/poli.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);
  @override
  _PoliFormState createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliController = TextEditingController();
  Poli newPoli = Poli(namaPoli: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _namaPoliController,
                decoration: const InputDecoration(labelText: "Nama Poli"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Nama Poli tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 28),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      newPoli = Poli(namaPoli: _namaPoliController.text);
                      Navigator.pop(context, newPoli);
                    });
                  }
                },
                child: const Text("Simpan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
