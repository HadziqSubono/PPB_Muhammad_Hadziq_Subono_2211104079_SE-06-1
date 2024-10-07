import 'dart:io';

String cekNilai(int nilai) {
  if (nilai > 70) {
    return "$nilai merupakan Nilai A";
  } else if (nilai > 40 && nilai <= 70) {
    return "$nilai merupakan Nilai B";
  } else if (nilai > 0 && nilai <= 40) {
    return "$nilai merupakan Nilai C";
  } else {
    return ""; // Nilai tidak memenuhi syarat
  }
}

void main() {
  stdout.write('Masukkan nilai: ');
  int nilai = int.parse(stdin.readLineSync()!);
  String hasil = cekNilai(nilai);
  if (hasil.isEmpty) {
    print('Nilai tidak valid');
  } else {
    print(hasil);
  }
}
