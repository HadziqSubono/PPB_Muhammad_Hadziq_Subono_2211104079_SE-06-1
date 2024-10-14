import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> tempatWisataList = [
    {
      'name': 'D.Net Purwokerto',
      'description':
          'Sebuah warnet terbaik yang ada didaerah purwokerto. cocok untuk pelajar seperti mahasiswa yang sedang menunggu jam mata kuliah',
      'imageUrl':
          "https://lh5.googleusercontent.com/p/AF1QipNOnVnQa8SdvzjtgDtzePO4tnNU87e_rq6SF_OZ=w408-h543-k-no"
    },
    {
      'name': 'RITA SuperMall Purwokerto',
      'description':
          'Toko retail, pujasera, bioskop & minimarket adalah daya tarik di mal kota populer ini.',
      'imageUrl':
          "https://www.agrowangi.com/wp-content/uploads/2023/10/2023-03-28.jpg"
    },
    {
      'name': 'Curug Jenggala',
      'description':
          'Air terjun dengan aliran air yang deras, cocok untuk kegiatan arung jeram.',
      'imageUrl':
          "https://asset.kompas.com/crops/vz0cyYnm5q3faqfFPfpdFbLpAUI=/0x83:1000x750/750x500/data/photo/2022/06/02/62980a78e6a0d.jpg"
    },
    {
      'name': 'Curug Gomblang',
      'description':
          'Curug Gomblang merupakan destinasi wisata air terjun yang terletak di Dusun Windusari, Desa Kalisalak, Kecamatan Kedungbanteng. Air terjun ini memiliki tinggi 50 meter. Curug Gomblang mulai dirintis sebagai destinasi wisata sejak September 2015 dan mulai dikenal masyarakat luas pada saat lebaran 2016.',
      'imageUrl':
          "https://cdn.wisata.app/diary/ebe5e190-ad1e-4acf-8de9-fb9114a65253_xs.jpg"
    },
    {
      'name': 'Massapi Cafe and Resto',
      'description':
          'Resto yang mengusung konsep dekat dengan alam bak sedang di tengah hutan.',
      'imageUrl':
          "https://cdn.idntimes.com/content-images/community/2024/05/20240517-194813-7deafef97d1d63bb63604c071a3136a4-415b95e4b35cc2934f7cbe76c6099683.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Rekomendasi Wisata")),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
        itemCount: tempatWisataList.length,
        itemBuilder: (context, index) {
          final place = tempatWisataList[index];
          return ListTile(
            leading: Image.network(place['imageUrl']!),
            title: Text(place['name']!),
            subtitle: Text(place['description']!),
            onTap: () {
              print("Anda telah mengklik tempat: ${place['name']}");
            },
          );
        },
      ),
    );
  }
}
