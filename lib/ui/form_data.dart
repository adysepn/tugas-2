import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaTextboxController = TextEditingController();
  final _nimTextboxController = TextEditingController();
  final _tahunLahirTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Input Data"),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: "Nama"),
                controller: _namaTextboxController,
              ),
              TextField(
                decoration: const InputDecoration(labelText: "NIM"),
                controller: _nimTextboxController,
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Tahun Lahir"),
                controller: _tahunLahirTextboxController,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                    child: const Text('Simpan'),
                    onPressed: () {
                      String nama = _namaTextboxController.text;
                      String nim = _nimTextboxController.text;
                      int tahunLahir =
                          int.parse(_tahunLahirTextboxController.text);

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TampilData(
                                nama: nama,
                                nim: nim,
                                tahunLahir: tahunLahir,
                              )));
                    },
                  ))
            ],
          ),
        ));
  }
}

int hitungUmur(int tahunLahir) {
  DateTime sekarang = DateTime.now();
  int tahunSekarang = sekarang.year;
  int selisihTahun = tahunSekarang - tahunLahir;
  return selisihTahun;
}
