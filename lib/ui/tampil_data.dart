import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahunLahir;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Perkenalan"),
        ),
        body: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                  "Nama saya $nama , NIM $nim, dan umur saya adalah ${hitungUmur(tahunLahir)} tahun"),
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
