import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DetailWisataPage(),
    );
  }
}

class DetailWisataPage extends StatelessWidget {
  const DetailWisataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rekomendasi Wisata'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Curug Jenggala',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'images/curug_jenggala.jpg',
              width: 300,
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Curug Jenggala adalah air terjun yang berlokasi di Ketenger, Baturaden, Banyumas. Air terjun ini memiliki ketinggian 30 meter dari permukaan tanah Curug ini mempunyai tiga air terjun yang tingginya sejajar, dengan air terjun yang di tengah memiliki arus yang paling deras. Objek wisata ini menampilkan keindahan alam yang masih asli dan air terjun yang memesona. Di bawah air terjun terdapat sungai dengan batuan besar.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logika untuk mengunjungi tempat wisata
              },
              child: const Text('Kunjungi Tempat'),
            ),
          ],
        ),
      ),
    );
  }
}
