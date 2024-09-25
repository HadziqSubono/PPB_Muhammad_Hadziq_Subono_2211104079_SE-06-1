import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Mahasiswa',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Biodata Mahasiswa'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/foto_mahasiswa.jpg'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Nama',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Muhammad Hadziq Subono',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'NIM',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '2211104079',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Fakultas dan Jurusan',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Fakultas Informatika, S1 Rekayasa Perangkat Lunak',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Tanggal Lahir',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '16 Juni 2004',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Alamat',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Jln.DI Panjaitan no.11,Rt 7/1,kel.Purwokerto kulon,kec.Purwokerto selatan,Jawa tengah',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'No. HP',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '085705275125',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}