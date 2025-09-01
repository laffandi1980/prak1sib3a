import 'dart:io';

import 'package:prak1/prak1.dart' as prak1;

late String namaDepan; // deklarasi variabel global
late String namaBelakang;
void main(List<String> arguments) {
  // print('Hello world: ${prak1.calculate()}!');
  //variables
  // var nama = 'Luqman Affandi'; // varchar
  // stdout.writeln('Nama: $nama');
  stdout.write('Masukkan nama: '); // print tanpa newline
  var nama = stdin.readLineSync(); // input string
  stdout.writeln('Nama: $nama');
  stdout.write('Masukkan Alamat: ');
  String? alamat = stdin.readLineSync();
  stdout.writeln('Alamat: $alamat');
  stdout.write('Masukkan Umur: ');
  String? umurInput = stdin.readLineSync();
  int umur = int.tryParse(umurInput ?? '') ?? 0; // konvers
  //if(umurInput != null) {
  //  umur = int.parse(umurInput);
  //}else {
  //  umur = 0;
  //}
  stdout.writeln('Umur: $umur');
  // // double tinggi = 170.5; // float
  stdout.write('Masukkan Tinggi Badan (cm): ');
  String? tinggiInput = stdin.readLineSync();
  double tinggi = double.tryParse(tinggiInput ?? '') ?? 0.0;
  stdout.writeln('Tinggi Badan: $tinggi cm');
  // // bool sudahMenikah = false; // boolean
  stdout.write('Apakah sudah menikah (ya/belum): ');
  String? menikahInput = stdin.readLineSync();
  bool sudahMenikah = (menikahInput?.toLowerCase() == 'ya') ? true : false;
  stdout.writeln('Sudah Menikah: $sudahMenikah');
  dynamic nilai = 0;
  stdout.writeln('Nilai awal: $nilai');
  nilai = 'Lulus';
  stdout.writeln('Nilai sekarang: $nilai');
  int? nilaiNull = null;
  stdout.writeln('Nilai null: $nilaiNull');

  namaDepan = 'Luqman'; // inisialisasi variabel global
  namaBelakang = 'Affandi';
  stdout.writeln('Nama Lengkap: $namaDepan $namaBelakang');

  String? kota;
  kota = 'Bandung';
  print(kota ?? 'Kota belum diisi');

  String? nama1 = 'Rudi';
  print(nama1!.toUpperCase());

  List<String> daftarNama = ['Andi', 'Budi', 'Caca'];
  daftarNama.add('Deni');
  print(daftarNama);
  print('Jumlah nama: ${daftarNama.length}');

  Map<String, int> nilaiMap = {'Andi': 80, 'Budi': 90, 'Caca': 85};
  nilaiMap['Deni'] = 95;
  print(nilaiMap);
  print('Nilai Andi: ${nilaiMap['Andi']}');
  print('Jumlah siswa: ${nilaiMap.length}');

  const String sekolah = 'SMK Telkom Malang';
  // sekolah = 'SMK Negeri 1'; // error karena konstanta tidak bisa diubah
  print('Sekolah: $sekolah');

  final String jurusan = 'Rekayasa Perangkat Lunak';
  // jurusan = 'Teknik Komputer'; // error karena final tidak bisa diubah
  print('Jurusan: $jurusan');
}
