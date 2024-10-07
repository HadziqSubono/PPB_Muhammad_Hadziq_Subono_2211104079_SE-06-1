import 'dart:io';

void piramidaBintang(int tinggi) {
  for (int i = 1; i <= tinggi; i++) {
    String spasi = ' ' * (tinggi - i);
    String bintang = '*' * (2 * i - 1);
    print(spasi + bintang);
  }
}

void main() {
  stdout.write('Masukkan tinggi piramida: ');
  int tinggi = int.parse(stdin.readLineSync()!);
  piramidaBintang(tinggi);
}
