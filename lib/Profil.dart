
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanProfil(),
    );
  }
}

// Widget KartuMahasiswa
class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(nama),
        subtitle: Text(
          'NIM: $nim\nProdi: $prodi',
        ),
        isThreeLine: true,
      ),
    );
  }
}

// Halaman utama
class HalamanProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),

            Text(
              'Daftar Mahasiswa',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Column(
              children: [
                KartuMahasiswa(
                  nama: 'Budi',
                  nim: '3012410025',
                  prodi: 'Informatika',
                ),
                KartuMahasiswa(
                  nama: 'Siti',
                  nim: '3012410026',
                  prodi: 'Informatika',
                ),
                KartuMahasiswa(
                  nama: 'Andi',
                  nim: '3012410027',
                  prodi: 'Sistem Informasi',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
