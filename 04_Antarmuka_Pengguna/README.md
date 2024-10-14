# Laporan Praktikum Pemrograman Perangkat Bergerak

## Nama : Muhammad Hadziq Subono

## NIM : 2211104079

## Kelas : SE-06-01

# **ANTARMUKA PENGGUNA**

# GUIDED

## Pengenalan Widget

Pada dasarnya semua tampilan di dalam Flutter adalah komponen yang bernama Widget, dan akan dipecah menjadi komponen-komponen yang kecil serta memiliki environment sendiri untuk mengelola dirinya.

### Container

Adalah widget dasar yang digunakan untuk menentukan batasan atau
constraints dari child widget-nya. Container dapat diisi dengan berbagai
jenis child widget seperti : text, image, atau bahkan layout widget lainnya.

### Row dan Column

Adalah layout widget yang digunakan untuk mengatur child widget secara
horizontal atau vertical.

### Stack

Adalah layout widget yang digunakan untuk menumpuk beberapa widget di
atau satu sama lain.

### Expanded dan Flexible

Adalah widget yang digunakan untuk mengatur bagaimana child widget
mengisi ruang yang tersedia. Expanded akan memberikan semua ruang
yang tersedia ke child widget, sedangkan Flexible akan memberikan
sejumlah ruang yang dapat berubahubah sesuai dengan kondisi yang ada.

### ListView

Adalah widget yang digunakan untuk menampilkan daftar item yang dapat
di-scroll.

### GridView

Adalah widget yang digunakan untuk menampilkan daftar item dalam
bentuk grid.

### Wrap

Adalah widget yang digunakan untuk menampilkan child widget dalam baris
atau kolom. Jika child widget melebihi lebar atau tinggi dari wrap, maka
widget tersebut akan dibungkus ke baris atau kolom berikutnya.

### Table

Adalah widget yang digunakan untuk menampilkan data dalam bentuk
tabel. TableRow untuk menambahkan baris, dan TableCell untuk
menambahkan kolom

## GridView

GridView merupakan widget yang serupa dengan Array 2D dalam bahasa pemrograman apapun. Widget tersebut digunakan ketika harus menampilkan sesuatu pada Grid tersebut, seperti menampilkan images, text, icons, dll.

```
class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum 4'),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        padding: EdgeInsets.all(12),
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Grid View 1'),
            color: Colors.amberAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Grid View 2'),
            color: Colors.greenAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Grid View 3'),
            color: Colors.redAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Grid View 4'),
            color: Colors.blueAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Grid View 5'),
            color: Colors.yellowAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Grid View 6'),
            color: Colors.purpleAccent,
          ),
        ],
      ),
    );
  }
}
```

![ouput-gridview](https://github.com/user-attachments/assets/514b80d3-8179-4d0e-a59e-931542ed9072)

## ListView

ListView merupakan widget scroll yang paling umum digunakan. Widget ini dapat menampilkan lebih dari satu komponen atau widget melalui variabel children. Pada pembahasan kali ini akan menggunakan ListView default dengan variabel children pada widget tersebut>. Cara penggunaan ListView ini dengan memasukkan widget yang ingin disusun sebagai children dari ListView.

```
class listviewscreen extends StatelessWidget {
  const listviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('latihan list view'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        // ScrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 200,
            width: 200,
            color: const Color.fromARGB(255, 0, 255, 0),
            child: Center(child: Text("List View 1")),
          ),
        ],
      ),
    );
  }
}
```

![ouput-listview](https://github.com/user-attachments/assets/278c9186-9829-4759-bb00-1b092e3cec32)

## Stack

merupakan widget yang saling tumpang tindih terhadap widget lain. Seperti image dan text yang saling bertumpuk, atau overlay yang terdapat button dan widget lainnya. Dengan menggunakan Stack dapat memposisikan widget satu sama lain dan bertumpukan antar widget.

```
import 'package:flutter/material.dart';

class stackscreen extends StatelessWidget {
  const stackscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("latihan stack"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                width: 90,
                height: 90,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 90,
                height: 90,
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 90,
                height: 90,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 90,
                height: 90,
                color: Colors.purple,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
```

![ouput-stack](https://github.com/user-attachments/assets/ea8cd72f-02bf-4163-bd2c-deae9df68573)

# =======================

# UNGUIDED

1. Modifikasi project TP 04 (Tugas Pendahuluan) untuk Antarmuka Pengguna, yang mana di dalamnya terdapat ListView, untuk merekomendasikan beberapa tempat wisata yang ada di Banyumas disertai foto, nama wisata, dan deskripsi singkat! (buatlah se kreatif mungkin).

## Source Code

```
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
```

## Output

![ui-frame](https://github.com/user-attachments/assets/d42f371f-c106-4ee0-8140-b04653ca7b2c)
![debug-console](https://github.com/user-attachments/assets/c534deab-bd55-42a3-8f7c-515996edfcd2)

## Deskripsi Program

Aplikasi dimulai dari fungsi main yang menjalankan instance dari kelas MyApp. Kelas MyApp mengatur tampilan dengan menggunakan Material Design dan ThemeData. Halaman utama yang ditampilkan adalah kelas MyHomePage, yang memuat daftar tempat wisata dalam bentuk list item menggunakan widget ListTile.

Setiap item dalam daftar mencakup gambar (ditampilkan menggunakan Image.network), nama tempat, dan deskripsi singkat. Pengguna dapat menekan salah satu item untuk mencetak pesan konfirmasi di console yang menunjukkan tempat wisata yang dipilih.

Daftar tempat wisata disimpan dalam sebuah list yang berisi map dengan properti nama, deskripsi, dan URL gambar yang valid. Widget ListView.builder digunakan untuk menghasilkan daftar dinamis berdasarkan jumlah item yang ada dalam list tersebut.
